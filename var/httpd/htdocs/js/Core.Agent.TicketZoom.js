// --
// Core.Agent.TicketZoom.js - provides the special module functions for TicketZoom
// Copyright (C) 2001-2010 OTRS AG, http://otrs.org/\n";
// --
// $Id: Core.Agent.TicketZoom.js,v 1.21 2010-10-01 13:19:23 mg Exp $
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

var Core = Core || {};
Core.Agent = Core.Agent || {};

/**
 * @namespace
 * @exports TargetNS as Core.Agent.TicketZoom
 * @description
 *      This namespace contains the special module functions for TicketZoom.
 */
Core.Agent.TicketZoom = (function (TargetNS) {
    /**
     * @function
     * @param {String} TicketID of ticket which get's shown
     * @param {String} ArticleID of article which get's shown
     * @return nothing
     *      Mark an article as seen in frontend and backend.
     */
    TargetNS.MarkAsSeen = function (TicketID, ArticleID) {
        TargetNS.MarkAsSeenTimeout = window.setTimeout(function () {
            // Mark old row as readed
            $('#FixedTable .ArticleID[value=' + ArticleID + ']').closest('tr').removeClass('UnreadArticles').find('span.UnreadArticles').remove();

            // Mark article as seen in backend
            var Data = {
                Action: 'AgentTicketZoom',
                Subaction: 'MarkAsSeen',
                TicketID: TicketID,
                ArticleID: ArticleID
            };
            Core.AJAX.FunctionCall(
                Core.Config.Get('CGIHandle'),
                Data,
                function () {}
            );
        }, 3000);
    };

    /**
     * @function
     * @param {jQueryObject} $Iframe The iframe which should be auto-heighted
     * @return nothing
     *      This function initializes the special module functions
     */
    TargetNS.IframeAutoHeight = function ($Iframe) {
        if (isJQueryObject($Iframe)) {
            var NewHeight = $Iframe.get(0).contentWindow.document.body.scrollHeight;
            if (!NewHeight || isNaN(NewHeight)) {
                NewHeight = Core.Config.Get('Ticket::Frontend::HTMLArticleHeightDefault');
            }
            else {
                if (NewHeight > Core.Config.Get('Ticket::Frontend::HTMLArticleHeightMax')) {
                    NewHeight = Core.Config.Get('Ticket::Frontend::HTMLArticleHeightMax');
                }
            }
            $Iframe.height(NewHeight + 'px');
        }
    };

    /**
     * @function
     * @private
     * @param {String} ArticleURL The URL which should be loaded via AJAX
     * @param {String} ArticleID The article number of the loaded article
     * @return nothing
     *      This function loads the given article via ajax
     */
    function LoadArticle(ArticleURL, ArticleID) {

        // Clear timeout for URL hash check, because hash is now changed manually
        window.clearTimeout(TargetNS.CheckURLHashTimeout);

        // Add loader to the widget
        $('#ArticleItems .WidgetBox').addClass('Loading');
        Core.AJAX.ContentUpdate($('#ArticleItems'), ArticleURL, function () {
            $('#ArticleItems a.AsPopup').bind('click', function (Event) {
                Core.UI.Popup.OpenPopup($(this).attr('href'), 'Action');
                return false;
            });

            // Add event bindings to new widget
            Core.UI.InitWidgetActionToggle();

            // Add hash to the URL to provide direct URLs and history back/forward functionality
            location.hash = '#' + ArticleID;
            TargetNS.ActiveURLHash = location.hash.replace(/#/, '');

            //Remove Loading class
            $('#ArticleItems .WidgetBox').removeClass('Loading');

            // Initiate URL hash chack again
            TargetNS.CheckURLHashTimeout = window.setTimeout(function () {
                TargetNS.CheckURLHash();
            }, 500);
        });
    }

    /**
     * @function
     * @return nothing
     *      This function checks if teh url hash has changed and initiates an article load
     */
    TargetNS.CheckURLHash = function () {

        // if not defined yet
        if (typeof TargetNS.ActiveURLHash === 'undefined') {
            TargetNS.ActiveURLHash = location.hash.replace(/#/, '');
        }

        // if defined and saved value is different to latest value (= user has used history back or forward)
        else if (TargetNS.ActiveURLHash !== location.hash.replace(/#/, '')) {
            TargetNS.ActiveURLHash = location.hash.replace(/#/, '');

            // if article ID is found in article list (= article id is valid)
            var $ArticleElement = $('#FixedTable').find('input.ArticleID[value=' + TargetNS.ActiveURLHash + ']');
            if ($ArticleElement.length) {

                // Add active state to new row
                $($ArticleElement).closest('table').find('tr').removeClass('Active').end().end().closest('tr').addClass('Active');

                // Load content of new article
                LoadArticle($ArticleElement.closest('td').find('input.ArticleInfo').val(), TargetNS.ActiveURLHash);
            }
        }
    };

    /**
     * @function
     * @return nothing
     *      This function initializes the special module functions
     */
    TargetNS.Init = function (Options) {
        var $THead = $('#FixedTable thead'),
            $TBody = $('#FixedTable tbody'),
            ZoomExpand = !$('div.ArticleView a.OneArticle').hasClass('Active'),
            URLHash,
            $ArticleElement,
            ResizeTimeoutScroller,
            ResizeTimeoutWindow;

        Core.UI.Resizable.Init($('#ArticleTableBody'), Options.ArticleTableHeight, function (Event, UI, Height, Width) {

            // remember new hight for next reload
            window.clearTimeout(ResizeTimeoutScroller);
            ResizeTimeoutScroller = window.setTimeout(function () {
                Core.Agent.PreferencesUpdate('UserTicketZoomArticleTableHeight', Height);
            }, 1000);
        });
        Core.UI.InitTableHead($THead, $TBody);

        $(window).resize(function () {
            window.clearTimeout(ResizeTimeoutWindow);
            ResizeTimeoutWindow = window.setTimeout(function () {
                Core.UI.AdjustTableHead($THead, $TBody);
            }, 500);
        });

        Core.UI.Dialog.RegisterAttachmentDialog($('.TableSmall tbody td a.Attachment'));

        // Table sorting
        Core.UI.Table.Sort.Init($('#FixedTable'), function () {
            $(this).find('tr')
                .removeClass('Even')
                .filter(':even')
                .addClass('Even')
                .end()
                .removeClass('Last')
                .filter(':last')
                .addClass('Last');
        });

        // load another article, if in "show one article" mode and article id is provided by location hash
        if (!ZoomExpand) {
            URLHash = location.hash.replace(/#/, '');

            // if article ID is found in article list (= article id is valid)
            $ArticleElement = $('#FixedTable').find('input.ArticleID[value=' + URLHash + ']');
            if ($ArticleElement.length) {

                // Add active state to new row
                $($ArticleElement).closest('table').find('tr').removeClass('Active').end().end().closest('tr').addClass('Active');

                // Load content of new article
                LoadArticle($ArticleElement.closest('td').find('input.ArticleInfo').val(), URLHash);
            }

            // if URL hash is empty, set it initially to the active article for working browser history
            else if (URLHash === '') {
                location.hash = '#' + $('#FixedTable tr.Active input.ArticleID').val();
            }
        }

        // loading new articles
        $('#FixedTable tbody tr').bind('click', function (Event) {

            // Mode: show one article - load new article via ajax
            if (!ZoomExpand) {

                // Add active state to new row
                $(this).closest('table').find('tr').removeClass('Active').end().end().addClass('Active');

                // Mark old row as readed
                $(this).closest('tr').removeClass('UnreadArticles').find('span.UnreadArticles').remove();

                // Load content of new article
                LoadArticle($(this).find('input.ArticleInfo').val(), $(this).find('input.ArticleID').val());
            }

            // Mode: show all articles - jump to the selected article
            else {
                location.href = '#Article' + $(this).find('input.ArticleID').val();
            }

            return false;
        });

        // init control function to check the location hash, if the user used the history back or forward buttons
        if (!ZoomExpand) {
            TargetNS.CheckURLHashTimeout = window.setTimeout(function () {
                TargetNS.CheckURLHash();
            }, 500);
        }
    };

    return TargetNS;
}(Core.Agent.TicketZoom || {}));
