// --
// Core.UI.js - provides all UI functions
// Copyright (C) 2001-2010 OTRS AG, http://otrs.org/\n";
// --
// $Id: Core.UI.js,v 1.4 2010-07-21 06:05:17 cg Exp $
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

/**
 * @namespace
 * @description
 *      This is the global namespace
 */
var Core = Core || {};

/**
 * @namespace
 * @exports TargetNS as Core.UI
 * @description
 *      This namespace contains all UI functions
 */
Core.UI = (function (TargetNS) {

    var IDGeneratorCount = 0;

    /**
     * @function
     * @description
     *      This function is used for the adjustment of the table head of OverviewSmall
     * @param {jQueryObject} $THead the thead thats th's should be adjusted
     * @param {jQueryObject} $TBody the tbody
     * @return nothing
     */
    TargetNS.InitTableHead = function ($THead, $TBody) {
        // set the thead-width to the tbody-width (it's not the same because of the scrollbar in the tbody)
        $THead.width($TBody.outerWidth() + 'px');
        // initial adjustion of the tablehead elements
        TargetNS.AdjustTableHead($THead, $TBody);
    };

    /**
     * @function
     * @description
     *      This function is used to adjust the table head
     * @param {jQueryObject} $THead the thead thats th's should be adjusted
     * @param {jQueryObject} $TBody the tbody
     * @return nothing
     */
    TargetNS.AdjustTableHead = function ($THead, $TBody) {
        var $THeadElements = $THead.find('tr th'),
            THeadElementWidth,
            $TBodyElements = $TBody.find('tr:first td'),
            TBodyWidths,
            TableSize = $THeadElements.size(),
            Adjusted = true,
            Adjustments = [],
            I;

        /**
         * @function
         * @private
         * @param {jQueryObjects} $THead the thead thats th's should be adjusted
         * @return {Array} Elements Elements that need to know their width
         * @description Shows and hides an ajax loader for every element which is updates via ajax
         */
        function GetWidths($Elements, Position) {
            var Storage = [],
                Size = $Elements.length,
                J;
            if (typeof Position !== "undefined") {
                return $Elements.eq(Position).outerWidth();
            }
            else {
                for (J = 0;J < Size;J++) {
                    Storage[J] = $Elements.eq(J).outerWidth();
                }
                return Storage;
            }
        }

        TBodyWidths = GetWidths($TBodyElements);

        // First round: adjust obvious differences
        for (I = 0; I < TableSize; I++) {
            $THeadElements.eq(I).width(TBodyWidths[I] + 'px');
            THeadElementWidth = GetWidths($THeadElements, I);
            if (THeadElementWidth > TBodyWidths[I]) {
                Adjustments[I] = THeadElementWidth;
                Adjusted = false;
            }
        }

        // Second round: Adjust the body columns as calculated before
        if (!Adjusted) {
            for (I = 0; I < TableSize; I++) {
                if (Adjustments[I]) {
                    $TBodyElements.eq(I).width(Adjustments[I] + 'px');
                }
            }
            TargetNS.AdjustTableHead($THead, $TBody);
        }
    };

    /**
     * @function
     * @description
     *      This function makes the control div static if it hits the top
     * @param {jQueryObject} $Control the control div
     * @return nothing
     */
    TargetNS.StaticTableControl = function ($Control) {
        var Offset = $Control.offset().top,
            Height = $Control.height();

        $(window).scroll(function (event) {
            var y = $(this).scrollTop(),
                Height = $Control.height();

            // TODO: Cache the class and css changes

            if (y >= Offset) {
                $Control.addClass('Fixed');
                $Control.nextAll('.Overview:first').css('margin-top', Height);
            }
            else {
                $Control.removeClass('Fixed');
                $Control.nextAll('.Overview:first').css('margin-top', 0);
            }
        });
    };

    /**
     * @function
     * @description
     *      This function initializes the toggle mechanism for all widgets with a WidgetAction toggle icon
     * @return nothing
     */
    TargetNS.InitWidgetActionToggle = function () {
        $(".WidgetAction.Toggle > a")
            .each(function () {
                var $WidgetElement = $(this).closest("div.Header").parent('div'),
                    ContentDivID = TargetNS.GetID($WidgetElement.children('.Content'));
                $(this)
                    .attr('aria-controls', ContentDivID)
                    .attr('aria-expanded', $WidgetElement.hasClass('Expanded'));
            })
            .unbind('click.WidgetToggle')
            .bind('click.WidgetToggle', function () {
                var $WidgetElement = $(this).closest("div.Header").parent('div'),
                    Animate = $WidgetElement.hasClass('Animate'),
                    $that = $(this);

                /**
                 * @function
                 * @private
                 * @return nothing
                 * @description Interchange classes between Collapsed and Expanded
                 */

                function ToggleWidget() {
                    $WidgetElement
                        .toggleClass('Collapsed')
                        .toggleClass('Expanded')
                        .end()
                        .end()
                        .attr('aria-expanded', $(this).closest("div.Header").parent('div').hasClass('Expanded'));
                }

                if (Animate && Core.Config.Get('AnimationEnabled')) {
                    $WidgetElement.addClass('AnimationRunning').find('.Content').slideToggle("slow", function () {
                        ToggleWidget();
                        $WidgetElement.removeClass('AnimationRunning');
                    });
                } else {
                    ToggleWidget();
                }

                return false;
            });
    };

    /**
     * @function
     * @description
     *      This function initializes the close buttons for the message boxes that show server messages
     * @return nothing
     */
    TargetNS.InitMessageBoxClose = function () {
        $(".MessageBox > a.Close")
            .unbind('click.MessageBoxClose')
            .bind('click.MessageBoxClose', function (Event) {
                $(this).parent().remove();
                Event.preventDefault();
            });
    };

    /**
     * @function
     * @description
     *      This function adds special not valid attributes to HTML via javascript
     * @return nothing
     */
    TargetNS.ProcessTagAttributeClasses = function () {
        $('.AutocompleteOff')
            .attr('autocomplete', 'off');
    };

    /**
     * @function
     * @description
     *      Returns the ID of the Element and creates one for it if nessessary.
     * @param {jQueryObject} Element
     * @return {String} ID
     */
    TargetNS.GetID = function ($Element) {
        var ID = $Element.attr('id');
        if (!ID) {
            $Element.attr('id', ID = 'OTRS_UI_AutogeneratedID_' + IDGeneratorCount++);
            // Debug this
            Core.Debug.Log('Auto-generated required ID ' + ID + ' for element', $Element);
        }
        return ID;
    };

    /**
     * @function
     * @description
     *      This functions toggles two Containers with a nice slide effect.
     * @param {jQueryObject} $Element1 First container element
     * @param {jQueryObject} $Element1 Second container element
     */
    TargetNS.ToggleTwoContainer = function ($Element1, $Element2) {
        if (isJQueryObject($Element1, $Element2) && $Element1.length && $Element2.length) {
            $Element1.slideToggle('fast', function () {
                $Element2.slideToggle('fast');
            });
        }
    };

    TargetNS.RegisterToggleTwoContainer = function ($ClickedElement, $Element1, $Element2) {
        if (isJQueryObject($ClickedElement) && $ClickedElement.length) {
            $ClickedElement.click(function () {
                TargetNS.ToggleTwoContainer($Element1, $Element2);
                return false;
            });
        }
    };

    TargetNS.ScrollTo = function ($Element) {
        if (isJQueryObject($Element) && $Element.length) {
            window.scrollTo(0, $Element.offset().top);
        }
    };

    return TargetNS;
}(Core.UI || {}));