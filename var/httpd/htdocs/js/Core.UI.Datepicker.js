// --
// Core.UI.Datepicker.js - Datepicker
// Copyright (C) 2001-2010 OTRS AG, http://otrs.org/\n";
// --
// $Id: Core.UI.Datepicker.js,v 1.4 2010-09-07 14:17:28 mg Exp $
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

var Core = Core || {};
Core.UI = Core.UI || {};

/**
 * @namespace
 * @exports TargetNS as Core.Datepicker
 * @description
 *      This namespace contains the datepicker functions
 */
Core.UI.Datepicker = (function (TargetNS) {
    var VacationDays,
        VacationDaysOneTime,
        LocalizationData,
        DatepickerCount = 0;

    if (!Core.Debug.CheckDependency('Core.UI.Datepicker', '$([]).datepicker', 'jQuery UI datepicker')) {
        return;
    }

    /**
     * @function
     * @private
     * @param A boolean value
     * @param {jQueryObject} Element that will be checked
     * @description Review if a date object have correct values
     */
    function CheckDate(DateObject) {
        var DayDescription = '',
            DayClass = '';

        // Get defined days from Config, if not done already
        if (typeof VacationDays === 'undefined') {
            VacationDays = Core.Config.Get('Datepicker.VacationDays').TimeVacationDays;
        }
        if (typeof VacationDaysOneTime === 'undefined') {
            VacationDaysOneTime = Core.Config.Get('Datepicker.VacationDays').TimeVacationDaysOneTime;
        }

        // Check if date is one of the vacation days
        if (typeof VacationDays[DateObject.getMonth() + 1] !== 'undefined' &&
            typeof VacationDays[DateObject.getMonth() + 1][DateObject.getDate()] !== 'undefined') {
            DayDescription += VacationDays[DateObject.getMonth() + 1][DateObject.getDate()];
            DayClass = 'Highlight ';
        }

        // Check if date is one of the one time vacation days
        if (typeof VacationDaysOneTime[DateObject.getFullYear()] !== 'undefined' &&
            typeof VacationDaysOneTime[DateObject.getFullYear()][DateObject.getMonth() + 1] !== 'undefined' &&
            typeof VacationDaysOneTime[DateObject.getFullYear()][DateObject.getMonth() + 1][DateObject.getDate()] !== 'undefined') {
            DayDescription += VacationDaysOneTime[DateObject.getFullYear()][DateObject.getMonth() + 1][DateObject.getDate()];
            DayClass = 'Highlight ';
        }

        if (DayClass.length) {
            return [true, DayClass, DayDescription];
        }
        else {
            return [true, ''];
        }
    }

    /**
     * @function
     * @description
     *      This function initializes the datepicker on the defined elements.
     * @param {Object} Element The jQuery object of a text input field which should get a datepicker.
     *                 Or a hash with the Keys 'Year', 'Month' and 'Day' and as values the jQueryObjects of the select drop downs.
     * @return nothing
     */
    TargetNS.Init = function (Element) {
        function LeadingZero(Number) {
            if (Number.toString().length === 1) {
                return '0' + Number;
            }
            else {
                return Number;
            }
        }

        var $DatepickerElement,
            HasDateSelectBoxes = false,
            Options,
            I,
            ErrorMessage;

        if (typeof LocalizationData === 'undefined') {
            LocalizationData = Core.Config.Get('Datepicker.Localization');
            if (typeof LocalizationData === 'undefined') {
                throw new Core.Exception.ApplicationError('Datepicker localization data could not be found!', 'InternalError');
            }
        }

        // Increment number of initialized datepickers on this site
        DatepickerCount++;

        // Check, if datepicker is used with three input element or with three select boxes
        if (typeof Element === 'object' &&
            typeof Element.Day !== 'undefined' &&
            typeof Element.Month !== 'undefined' &&
            typeof Element.Year !== 'undefined' &&
            isJQueryObject(Element.Day, Element.Month, Element.Year)) {

            $DatepickerElement = $('<input>').attr('type', 'hidden').attr('id', 'Datepicker' + DatepickerCount);
            Element.Year.after($DatepickerElement);

            if (Element.Day.is('select') && Element.Month.is('select') && Element.Year.is('select')) {
                HasDateSelectBoxes = true;
            }
        }
        else {
            return false;
        }

        // Define options hash
        Options = {
            beforeShowDay: function (DateObject) {
                return CheckDate(DateObject);
            },
            showOn: 'focus',
            prevText: LocalizationData.PrevText,
            nextText: LocalizationData.NextText,
            firstDay: 0,
            showMonthAfterYear: 0,
            monthNames: LocalizationData.MonthNames,
            monthNamesShort: LocalizationData.MonthNamesShort,
            dayNames: LocalizationData.DayNames,
            dayNamesShort: LocalizationData.DayNamesShort,
            dayNamesMin: LocalizationData.DayNamesMin,
            isRTL: LocalizationData.IsRTL
        };

        Options.onSelect = function (DateText, Instance) {
            var Year = Instance.selectedYear,
                Month = Instance.selectedMonth + 1,
                Day = Instance.selectedDay;

            // Update the three select boxes
            if (HasDateSelectBoxes) {
                Element.Year.find('option[value=' + Year + ']').attr('selected', 'selected');
                Element.Month.find('option[value=' + Month + ']').attr('selected', 'selected');
                Element.Day.find('option[value=' + Day + ']').attr('selected', 'selected');
            }
            else {
                Element.Year.val(Year);
                Element.Month.val(LeadingZero(Month));
                Element.Day.val(LeadingZero(Day));
            }
        };
        Options.beforeShow = function (Input, Instance) {
            $(Input).val('');
            return {
                defaultDate: new Date(Element.Year.val(), Element.Month.val() - 1, Element.Day.val())
            };
        };

        $DatepickerElement.datepicker(Options);

        // add datepicker icon and click event
        Element.Year.after('<a href="#" class="DatepickerIcon" title="' + LocalizationData.IconText + '"></a>').next('a.DatepickerIcon').click(function () {
            $DatepickerElement.trigger('focus');
            return false;
        });

        ErrorMessage = Core.Config.Get('Datepicker.ErrorMessage');

        // Add validation error messages for all dateselection elements
        Element.Year
            .after('<div id="' + Element.Day.attr('id') + 'Error" class="TooltipErrorMessage"><p>' + ErrorMessage + '</p></div>')
            .after('<div id="' + Element.Month.attr('id') + 'Error" class="TooltipErrorMessage"><p>' + ErrorMessage + '</p></div>')
            .after('<div id="' + Element.Year.attr('id') + 'Error" class="TooltipErrorMessage"><p>' + ErrorMessage + '</p></div>');

        // only insert time element error messages if time elements are present
        if (Element.Hour && Element.Hour.length) {
            Element.Hour
                .after('<div id="' + Element.Hour.attr('id') + 'Error" class="TooltipErrorMessage"><p>' + ErrorMessage + '</p></div>')
                .after('<div id="' + Element.Minute.attr('id') + 'Error" class="TooltipErrorMessage"><p>' + ErrorMessage + '</p></div>');
        }

        // do not show the datepicker container div.
        $('#ui-datepicker-div').hide();
    };

    return TargetNS;
}(Core.UI.Datepicker || {}));