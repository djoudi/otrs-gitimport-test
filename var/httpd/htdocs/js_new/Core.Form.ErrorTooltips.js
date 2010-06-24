// --
// Core.UI.Tooltips.js - provides provides Tooltip functions
// Copyright (C) 2001-2010 OTRS AG, http://otrs.org/\n";
// --
// $Id: Core.Form.ErrorTooltips.js,v 1.2 2010-06-24 10:50:13 mn Exp $
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

var Core = Core || {};
Core.Form = Core.Form || {};

/**
 * @namespace
 * @exports TargetNS as Core.Form.ErrorTooltips
 * @description
 *      This namespace contains the Tooltip initialization functions
 */
Core.Form.ErrorTooltips = (function (TargetNS) {

    var TooltipContainerID = 'OTRS_UI_Tooltips_ErrorTooltip',
        TooltipOffsetTop = 20,
        TooltipOffsetLeft = 0,
        TongueClass = 'TongueLeft',
        $TooltipContent = $('<div class="Content" role="tooltip"></div>'),
        $Tooltip,
        Offset;

    function ShowTooltip($Element, TooltipContent) {
        var $TooltipContainer = $('#' + TooltipContainerID);
        if (!$TooltipContainer.length) {
            $('body').append('<div id="' + TooltipContainerID + '" class="TooltipContainer"></div>');
            $TooltipContainer = $('#' + TooltipContainerID);
        }

        /*
         * Now determine if the tongue needs to be right or left, depending on the
         * position of the target element on the screen.
         */
        if (($(document).width() - $Element.offset().left) < 250) {
            TongueClass = 'TongueRight';
        }

        /*
         * Now create and fill the tooltip with the error message.
         */
        $Tooltip = $('<div class="Tooltip ' + TongueClass + '"><div class="Tongue"></div></div>');
        $TooltipContent.html(TooltipContent);
        $Tooltip.append($TooltipContent);

        Offset = $Element.offset();

        $TooltipContainer
            .empty()
            .append($Tooltip)
            .css('left', Offset.left + TooltipOffsetLeft)
            .css('top', Offset.top + TooltipOffsetTop)
            .show();
    }

    function HideTooltip() {
        $('#' + TooltipContainerID).hide().empty();
    }

    /**
     * @function
     * @description
     *      This function initializes the tooltips on an input field
     * @param {jQueryObject} $Elements
     *      The elements (within a jQuery object) for whom the tooltips are initialized.
     * @param {String} TooltipContent
     *      Content of the tooltip, may contain HTML.
     * @return nothing
     */
    TargetNS.InitTooltip = function ($Element, TooltipContent) {
        $Element.unbind('focus.Tooltip');
        $Element.bind('focus.Tooltip', function () {
            ShowTooltip($Element, TooltipContent);
        });

        $Element.unbind('blur.Tooltip');
        $Element.bind('blur.Tooltip', HideTooltip);
    };

    /**
     * @function
     * @description
     *      This function removes the tooltip from an input field
     * @param {jQueryObject} $Element
     *      The elements (within a jQuery object) for whom the tooltips are removed.
     * @return nothing
     */
    TargetNS.RemoveTooltip = function ($Element) {
        HideTooltip();
        $Element.unbind('focus.Tooltip');
        $Element.unbind('blur.Tooltip');
    };

    TargetNS.InitRTETooltip = function ($Element, Message) {
        var ElementID = $Element.attr('id');
        CKEDITOR.instances[ElementID].on('focus', ShowRTETooltip, null, {ElementID: ElementID, Message: Message});
        CKEDITOR.instances[ElementID].on('blur', RemoveRTETooltip, null, ElementID);
    }

    TargetNS.RemoveRTETooltip = function ($Element) {
        var ElementID = $Element.attr('id');
        CKEDITOR.instances[ElementID].removeListener('focus', ShowRTETooltip);
        CKEDITOR.instances[ElementID].removeListener('blur', RemoveRTETooltip);
    }

    function ShowRTETooltip(Event) {
        ShowTooltip($('#cke_contents_' + Event.listenerData.ElementID), Event.listenerData.Message);
    }

    function RemoveRTETooltip(Event){
        HideTooltip($('#cke_contents_' + Event.listenerData));
    }

    return TargetNS;
}(Core.Form.ErrorTooltips || {}));