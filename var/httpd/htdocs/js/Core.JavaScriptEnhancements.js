// --
// Core.JavaScriptEnhancements.js - provides functions for validating form inputs
// Copyright (C) 2001-2010 OTRS AG, http://otrs.org/\n";
// --
// $Id: Core.JavaScriptEnhancements.js,v 1.2 2010-11-05 10:12:10 mg Exp $
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

(function () {

    /**
     * @function
     * @description
     *      This function checks if all given parameter objects are jQuery objects.
     * @return
     *      {boolean} Returns true if all parameter objects are jQuery objects
     */
    window.isJQueryObject = function () {
        var I;
        if (typeof jQuery === 'undefined') {
            return false;
        }
        for (I = 0; I < arguments.length; I++) {
            if (!(arguments[I] instanceof jQuery)) {
                return false;
            }
        }
        return true;
    };
}());