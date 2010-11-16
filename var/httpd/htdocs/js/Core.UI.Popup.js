// --
// Core.UI.Popup.js - provides functionality to open popup windows
// Copyright (C) 2001-2010 OTRS AG, http://otrs.org/\n";
// --
// $Id: Core.UI.Popup.js,v 1.8 2010-11-16 08:40:31 mg Exp $
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
 * @exports TargetNS as Core.UI.Popup
 * @description
 *      Popup windows
 */
Core.UI.Popup = (function (TargetNS) {
    var OpenPopups = {},
        PopupProfiles,
        PopupDefaultProfile = 'Default',
        RegisterPopupTimeOut = 1000;

    if (!Core.Debug.CheckDependency('Core.UI.Dialog', 'Core.Config', 'Core.Config')) {
        return;
    }

    PopupProfiles = {
        'Default': "dependent=yes,height=700,left=100,top=100,location=no,menubar=no,resizable=yes,scrollbars=yes,status=no,toolbar=no,width=1000"
    };

    /**
     * @function
     * @private
     * @description Check which popup window are still open
     */
    function CheckOpenPopups() {
        $.each(OpenPopups, function (Key, Value) {
            if (Value.closed) {
                delete OpenPopups[Key];
            }
        });
    }

    /**
     * @function
     * @private
     * @param {string} Type The type of a window, e.g. 'Action'
     * @description Get window object by popup type
     */
    function GetPopupObjectByType(Type) {
        return OpenPopups[Type];
    }

    /**
     * @function
     * @description
     *      Register the pop-up event for a window.
     * @return nothing
     */
    TargetNS.RegisterPopupEvent = function () {
        $(window).bind('Popup', function (Event, Type, Param) {
            if (Type && typeof Type !== 'undefined') {
                if (Type === 'Reload') {
                    window.location.reload();
                }
                else if (Type === 'URL') {
                    if (Param && typeof Param.URL !== 'undefined') {
                        window.location.href = Param.URL;
                    }
                }
            }
        });
    };

    /**
     * @function
     * @description
     *      This function starts the pop-up event.
     * @param {String} Type The event type that will be launched
     * @param {Object} Param The element that contain information about the new screen address
     * @return nothing
     */
    TargetNS.FirePopupEvent = function (Type, Param) {
        $(window).unbind('beforeunload.Popup').unbind('unload.Popup');
        $(window).trigger('Popup', [Type, Param]);
    };

    /**
     * @function
     * @description
     *      This review if some popup windows are open, then try to send a warning.
     * @return nothing or a string for a warning sign.
     */
    TargetNS.CheckPopupsOnUnload = function () {
        var Size = 0;
        CheckOpenPopups();
        $.each(OpenPopups, function (Key, Value) {
            Size++;
        });
        if (Size) {
            return Core.Config.Get('PopupLeaveParentWindowMsg');
        }
    };

    /**
     * @function
     * @description
     *      This function close the active popup windows.
     * @return nothing
     */
    TargetNS.ClosePopupsOnUnload = function () {
        CheckOpenPopups();
        $.each(OpenPopups, function (Key, Value) {
            TargetNS.ClosePopup(Value);
        });
    };

    /**
     * @function
     * @description
     *      This function set the type for a popup window.
     * @param {Object} WindowObject The element is a javascript window object
     * @return nothing
     */
    TargetNS.RegisterPopupAtParentWindow = function (WindowObject) {
        var Type = WindowObject.WindowType;
        if (typeof OpenPopups[Type] === 'undefined') {
            OpenPopups[Type] = WindowObject;
        }
        else {
            if (OpenPopups[Type] !== WindowObject) {
                OpenPopups[Type] = WindowObject;
            }
        }
    };

    /**
     * @function
     * @description
     *      This function set a timeout and after that try to register a popup at a parent window.
     * @return nothing
     */
    TargetNS.InitRegisterPopupAtParentWindow = function () {
        window.setTimeout(function () {
            if (window.opener &&
                window.opener.Core &&
                window.opener.Core.UI &&
                window.opener.Core.UI.Popup
            ) {
                try {
                    window.opener.Core.UI.Popup.RegisterPopupAtParentWindow(window);
                }
                catch (Error) {}
            }
            Core.UI.Popup.InitRegisterPopupAtParentWindow();
        }, RegisterPopupTimeOut);
    };

    /**
     * @function
     * @description
     *      Get window object by popup type.
     * @param {String} Type The type of a window, e.g. 'Action'
     * @return {Object} The window object of the popup or undefined
     */
    TargetNS.GetPopupObject = function (Type) {
        return GetPopupObjectByType(Type);
    };

    /**
     * @function
     * @description
     *      This function resizes an opened window.
     * @param {String} Type The type of a window, e.g. 'Action'
     * @param {String} Width Width in pixels
     * @param {String} Height Height in pixels
     * @return nothing
     */
    TargetNS.Resize = function (Type, Width, Height) {
        var Object = GetPopupObjectByType(Type);
        if (typeof Object !== 'undefined') {
            Object.resizeTo(Width, Height);
        }
    };

    /**
     * @function
     * @description
     *      This function opens a popup window. Every popup is of a specific type and there can only be one window of a type at a time.
     * @param {String} URL The URL to be open in the new window
     * @param {String} Type The type of a window, e.g. 'Action'
     * @param {String} Profile The profile of a window, which defines the window parameters. Optional, default is 'Default'
     * @return nothing
     */
    TargetNS.OpenPopup = function (URL, Type, Profile) {
        var PopupObject, PopupProfile, NewWindow, WindowName, ConfirmClosePopup = true;
        CheckOpenPopups();
        if (URL) {
            PopupObject = GetPopupObjectByType(Type);

            if (typeof PopupObject !== 'undefined') {
                ConfirmClosePopup = window.confirm(Core.Config.Get('PopupAlreadyOpenMsg'));
                if (ConfirmClosePopup) {
                    TargetNS.ClosePopup(PopupObject);
                }
            }

            // Only load new popup if the user accepted that the old popup is closed
            if (ConfirmClosePopup) {
                PopupProfile = PopupProfiles[Profile] ? Profile : PopupDefaultProfile;
                /*
                 * Special treatment for the window name. At least in some browsers, window names
                 *  are global, so only one popup window with a particular name may exist across
                 *  all browser tabs. To avoid conflicts with that, we use 'randomized' names
                 *  by including the current time in the name string. This name is not needed
                 *  for anything as we keep track of the popup windows on our own.
                 */
                WindowName = 'OTRSPopup' + Date.parse(new Date);
                NewWindow = window.open(URL, WindowName, PopupProfiles[PopupProfile]);

                // check for popup blockers.
                // currently, popup windows cannot easily be detected in chrome, because it will
                //      load the entire content in an invisible window.
                if (!NewWindow ||  NewWindow.closed || typeof NewWindow.closed === 'undefined') {
                    window.alert(Core.Config.Get('PopupBlockerMsg'));
                }
                else {
                    OpenPopups[Type] = NewWindow;
                    OpenPopups[Type].WindowType = Type;
                }
            }
        }
    };

    /**
     * @function
     * @description
     *      This function closes a opened popup.
     * @param {String or Object} Popup The type of a popup or the window object
     * @return nothing
     */
    TargetNS.ClosePopup = function (Popup) {
        if (typeof Popup === 'string') {
            Popup = GetPopupObjectByType(Popup);
        }
        if (typeof Popup !== 'undefined') {
            Popup.close();
            CheckOpenPopups();
        }
    };

    /**
     * @function
     * @description
     *      The init function.
     * @return nothing
     */
    TargetNS.Init = function () {
        $(window).bind('beforeunload.Popup', function () {
            return Core.UI.Popup.CheckPopupsOnUnload();
        });
        $(window).bind('unload.Popup', function () {
            Core.UI.Popup.ClosePopupsOnUnload();
        });
        Core.UI.Popup.RegisterPopupEvent();

        // if this window is a popup itself, register another function
        if (window.opener !== null) {
            Core.UI.Popup.InitRegisterPopupAtParentWindow();
            $('.CancelClosePopup').bind('click', function () {
                window.close();
            });
            $('.UndoClosePopup').bind('click', function () {
                var RedirectURL = $(this).attr('href');
                window.opener.Core.UI.Popup.FirePopupEvent('URL', { URL: RedirectURL });
                window.close();
            });
        }
    };

    return TargetNS;
}(Core.UI.Popup || {}));
