// --
// Core.JSON.js - Resizable
// Copyright (C) 2001-2011 OTRS AG, http://otrs.org/
// --
// $Id: Core.JSON.js,v 1.1.2.1 2011-03-18 06:35:04 mp Exp $
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

"use strict";

var Core = Core || {};

/**
 * @namespace
 * @exports TargetNS as Core.JSON
 * @description
 *      Contains the code for the JSON functions.
 */
Core.JSON = (function (TargetNS) {

    if (!Core.Debug.CheckDependency('Core.JSON', 'JSON.parse', 'JSON parser')) {
        return;
    }

    /**
     * @function
     * @description
     *      This function parses a JSON String
     * @param {String} JSONString The string which should be parsed
     * @return {Object} The parsed JSON object
     */
    TargetNS.Parse = function (JSONString) {
        var JSONObject;

        try {
            JSONObject = JSON.parse(JSONString);
        }
        catch (e) {
            JSONObject = {};
        }

        return JSONObject;
    };

    /**
     * @function
     * @description
     *      This function stringifies a given JavaScript object
     * @param {Object} JSONObject The object which should be stringified
     * @return {String} The stringified JSON object
     */
    TargetNS.Stringify = function (JSONObject) {
        var JSONString;

        try {
            JSONString = JSON.stringify(JSONObject);
        }
        catch (e) {
            JSONString = "";
        }

        return JSONString;
    };

    return TargetNS;
}(Core.JSON || {}));