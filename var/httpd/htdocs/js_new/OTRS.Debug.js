// --
// OTRS.Debug.js - provides debugging functions
// Copyright (C) 2001-2010 OTRS AG, http://otrs.org/\n";
// --
// $Id: OTRS.Debug.js,v 1.8 2010-06-02 08:40:02 mn Exp $
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

var OTRS = OTRS || {};

/**
 * @namespace
 * @exports TargetNS as OTRS.Debug
 * @description
 *      This namespace contains all debug functions
 */
OTRS.Debug = (function (TargetNS) {

    var DebugConsole, DebugLog;
    if (typeof console === 'object' && typeof console.log === 'function') {
        DebugConsole = console;
        DebugLog = console.log;
    }
    else if (typeof opera === 'object' && typeof opera.PostError === 'function') {
        DebugConsole = opera;
        DebugLog = opera.PostError;
    }

    /**
     * @function
     * @description
     *      Simple logging function. All parameters will be passed to
     *      the debug console of Firebug et al, if present.
     */
    TargetNS.Log = DebugConsole ?
        function () {
            DebugLog.apply(DebugConsole, arguments);
        } :
        function () {}; // NOOP function for performance reasons in production systems

    /**
     * @exports TargetNS.CheckDependency as OTRS.Debug.CheckDependency
     * @function
     * @description
     *      Checks if a required function or namespace is present.
     * @param {String} TargetNamespace
     *      Namespace for which the check is executed
     * @param {String} Required
     *      The name of the function/namespace whose presence is checked
     * @param {String} RequiredLabel
     *      Label for the
     *      required item which will be included in the error message
     * @param {Boolean} Silent
     *      Do not issue an alert
     *
     * @return true if the required item was found, false otherwise (an an alert will be issued in that case)
     */
    /*jslint evil: true */
    TargetNS.CheckDependency = function (TargetNamespace, Required, RequiredLabel, Silent) {

        var RequiredEval;
        try {
            RequiredEval = eval('try{ typeof ' + Required + '} catch (E) {}');
        }
        catch (Exception) {
        }

        if (RequiredEval === 'function' || RequiredEval === 'object') {
            return true;
        }
        if (!Silent) {
            OTRS.Exception.Throw('Namespace ' + TargetNamespace + ' could not be initialized, because ' +
                RequiredLabel + ' could not be found.', 'InternalError');
        }
        return false;
    };
    /*jslint evil: false */

    /**
     * @exports TargetNS.BrowserCheck as OTRS.Debug.BrowserCheck
     * @function
     * @description
     *      Checks, if the used browser is not on the OTRS browser blacklist.
     * @return true if the used browser is *not* on the black list.
     */
    TargetNS.BrowserCheck = function () {
        var AppropriateBrowser = true,
            BrowserBlackList = OTRS.Config.Get('BrowserBlackList');
        if (typeof BrowserBlackList !== 'undefined') {
            $.each(BrowserBlackList, function (Key, Value) {
                if ($.isFunction(Value)) {
                    if (Value()) {
                        AppropriateBrowser = false;
                    }
                }
            });
            return AppropriateBrowser;
        }
    };

    /**
     * @exports TargetNS.SimulateRTLPage as OTRS.Debug.SimulateRTLPage
     * @function
     * @description
     *      Use this function to test your HTML/CSS/JS code against usage in RTL.
     *
     *      This function changes all visible texts on a page to Arabic for RTL
     *      testing purposes. It also sets the class "RTL" on the body element to
     *      cause the layout to switch to RTL.
     */
    TargetNS.SimulateRTLPage = function () {

        $('body').addClass('RTL');

        var ExcludeTags = {
            'html': 1,
            'head': 1,
            'style': 1,
            'title': 1,
            'link': 1,
            'meta': 1,
            'script': 1,
            'object': 1,
            'iframe': 1
        },
        Replacement = 'رسال الإجابة (البريد الإلكتروني';

        function ReplaceAllText(Node) {
            var ChildNodes = (Node || document.body).childNodes,
            CurrentNode,
            InputType,
            InputValue,
            ReplacementValue,
            CurrentText,
            I = 0;

            while (I < ChildNodes.length) {
                CurrentNode = ChildNodes[I++];

                if (CurrentNode.nodeType === 1 && !ExcludeTags[CurrentNode.nodeName])
                {
                    ReplaceAllText(CurrentNode);
                    if (CurrentNode.nodeName === 'INPUT') {
                        InputType = CurrentNode.getAttribute('type');
                        if (InputType === 'button' ||
                            InputType === 'submit' ||
                            InputType === 'reset' ||
                            InputType === 'text') {
                            InputValue = CurrentNode.getAttribute('value');
                            if (InputValue && InputValue.length) {
                                ReplacementValue = Replacement.substr(0, InputValue.length);
                                CurrentNode.setAttribute('value', ReplacementValue);
                            }
                        }

                    }
                }

                if (CurrentNode.nodeType !== 3) {
                    continue;
                }

                CurrentText = CurrentNode.nodeValue;
                if (!CurrentText) {
                    continue;
                }

                CurrentText = CurrentText.replace(/\s+/g, '');
                if (!CurrentText.length) {
                    continue;
                }

                CurrentNode.nodeValue = Replacement.substr(0, CurrentText.length);
            }
        }

        return ReplaceAllText();
    };

    return TargetNS;
}(OTRS.Debug || {}));
