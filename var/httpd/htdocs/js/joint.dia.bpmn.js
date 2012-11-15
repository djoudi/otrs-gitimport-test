// --
// joint.dia.bpmn.js - provides the BPMN diagram functionality for JointJS
// Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
// --
// $Id: joint.dia.bpmn.js,v 1.24.2.1 2012-11-15 22:25:23 mab Exp $
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

/*jslint strict: false, nomen: false*/

(function(global){

var Joint = global.Joint,
    Element = Joint.dia.Element,
    Point = Joint.point,
    bpmn;

/**
 * @name Joint.dia.bpmn
 * @namespace Holds functionality related to BPMN diagrams.
 */
bpmn = Joint.dia.bpmn = {};

/**
 * BPMN start state / event.
 * @name StartEvent.create
 * @methodOf Joint.dia.bpmn
 * @param {Object} position
 * @param {Number} position.x Position of the start state, x-axis
 * @param {Number} position.y Position of the start state, y-axis
 * @example
var start = Joint.dia.bpmn.StartEvent.create({
  x: 120,
  y: 70
});
 */
bpmn.StartEvent = Element.extend({
     object: "StartEvent",
     module: "bpmn",
     init: function(position){
         var p = Joint.DeepSupplement(this.properties, {
                     position: position
                 }, {
                     position: {x: 0, y: 0},
                     radius: 15,
                     attrs: { stroke: 'black', fill: 'white' }
                 });

         this.setWrapper(this.paper.circle(p.position.x, p.position.y, p.radius).attr(p.attrs));
         this.draggable(false);
     }
});

/**
 * BPMN activity.
 * @name Activity.create
 * @methodOf Joint.dia.bpmn
 * @param {Object} properties
 * @param {Object} properties.position
 * @param {Number} properties.position.x Position of the start state, x-axis
 * @param {Number} properties.position.y Position of the start state, y-axis
 * @param {String} properties.label The label name of the activity
 * @param {String} properties.id The ID of the DOM node
 * @example
var activity1 = Joint.dia.bpmn.Activity.create({
  position: {x: 120, y: 70},
  label: 'SomeName'
});
 */
bpmn.Activity = Element.extend({
    object: "Activity",
    module: "bpmn",
    init: function(properties) {
        var p = Joint.DeepSupplement(this.properties, properties, {
                position: {x: 0, y: 0},
                label: '',
                dblClickFunction: undefined,
                width: 110,
                height: 80,
                radius: 10,
                attrs: { stroke: '#444', fill: '#e5e5e5', id: 'test' }
            }),
            elem = this;

        this.setWrapper(this.paper.rect(p.position.x, p.position.y, p.width, p.height, p.radius).attr(p.attrs));

        this.drawLabel();

        this.wrapper.node.id = p.id;

        // dblclick variables
        this.dblClickStatus = 0;
        this.dblClickTime = 0;
        this.dblClickDelta = 300;

        // mousedown status
        this.mouseDown = false;

        // mouse events
        function mousedown() {
            elem.mouseDown = true;
            elem.checkDblClick(new Date().getTime());
            elem.hideTooltip();
            elem.hideDeleteButton();
        }

        function mouseup() {
            elem.mouseDown = false;
            // only check dblClick status here,
            // if the mouseup is missing for a correct dblclick
            if (elem.dblClickStatus === 2 && elem.checkDblClick(new Date().getTime())) {
                // execute dblclick event function
                elem.resetDblClick();
                elem.executeDblClick(p.dblClickFunction);
            }
        }

        // add mouseup and down events for the box
        this.wrapper.mousedown(mousedown);
        this.wrapper.mouseup(mouseup);

        // add mouseup and down events for the label within the box
        this.inner[0].mousedown(mousedown);
        this.inner[0].mouseup(mouseup);


        // hover variables
        this.activeHover = false;
        this.timer = undefined;


        function onmouseenter() {
            if (!elem.mouseDown) {
                if (elem.activeHover) {
                    clearTimeout(elem.timer);
                }
                else {
                    elem.activeHover = true;
                    elem.showTooltip(elem.properties);
                    elem.showDeleteButton(elem.properties);
                }
            }
        }

        function onmouseleave() {
            if (!elem.mouseDown) {
                elem.timer = setTimeout(function () {
                    elem.activeHover = false;
                    elem.hideTooltip();
                    elem.hideDeleteButton();
                }, 50);
            }
        }

        this.wrapper.hover(onmouseenter, onmouseleave);
        this.inner[0].hover(onmouseenter, onmouseleave);
    },

    // the dblClick status:
    // 0 = nothing happened yet, nothing clicked
    // 1 = first mousedown recognized
    // 2 = second mouse down in time recognized
    // 3 = mouseup of the second mouse click also recognized in time: this is a dblclick!

    checkDblClick: function(timestamp) {
        // nothing happened yet, looks like the first click
        if (this.dblClickStatus === 0) {
            this.dblClickTime = timestamp;
            this.dblClickStatus = 1;
        }
        // first click is done, now check if second mousedown was fast enough
        else if (this.dblClickStatus === 1) {
            // second mousedown was fast enough
            if ((timestamp - this.dblClickTime) <= this.dblClickDelta) {
                this.dblClickStatus = 2;
            }
            // click was to slow, reset the status to "first click"
            else {
                this.dblClickStatus = 1;
            }
            this.dblClickTime = timestamp;
        }
        // second click was also fast enough,
        // now make sure the mouseup of the second click is also fast enough
        else if (this.dblClickStatus === 2) {
            // was fast enough => dblclick recognized
            if ((timestamp - this.dblClickTime) <= this.dblClickDelta) {
                this.dblClickStatus = 3;
            }
            // too slow, reset to status 0
            else {
                this.dblClickStatus = 0;
            }
            this.dblClickTime = 0;
        }
        return ((this.dblClickStatus === 3) ? true : false);
    },
    resetDblClick: function() {
        this.dblClickStatus = 0;
        this.dblClickTime = 0;
    },
    executeDblClick: function(dblClickFunction) {
        if (typeof dblClickFunction !== 'undefined') {
            dblClickFunction();
        }
    },



    initTransitionDblClick: function (JointObject, Callback) {
        var Joints = (JointObject) ? (JointObject && JointObject._joints) : (this.wrapper && this.wrapper.joints());
        if (Joints && Joints.length) {
            $.each(Joints, function (Key, Transition) {
                if (typeof Transition.dom.label !== 'undefined') {
                    $.each (Transition.dom.label, function (Key, Label) {
                        if (Label.type === 'text') {
                            Label.node.ondblclick = function () {
                                if (typeof Callback !== 'undefined') {
                                    Callback(Transition);
                                }
                            };
                        }
                    });
                }
            });
        }
    }
});

/**
 * BPMN activity dummy.
 * @name ActivityDummy.create
 * @methodOf Joint.dia.bpmn
 * @param {Object} properties
 * @param {Object} properties.position
 * @param {Number} properties.position.x Position of the start state, x-axis
 * @param {Number} properties.position.y Position of the start state, y-axis
 * @param {String} properties.id The ID of the DOM node
 * @example
var activity1 = Joint.dia.bpmn.ActivityDummy.create({
  position: {x: 120, y: 70}
});
 */
bpmn.ActivityDummy = Element.extend({
    object: "ActivityDummy",
    module: "bpmn",
    init: function(properties) {
        var p = Joint.DeepSupplement(this.properties, properties, {
                position: {x: 0, y: 0},
                width: 10,
                height: 10,
                attrs: { stroke: 'black' }
            }),
            elem = this;

        this.setWrapper(this.paper.rect(p.position.x, p.position.y, p.width, p.height, p.radius).attr(p.attrs));

        this.wrapper.node.id = p.id;
    }
});

/**
 * Conditional arrow element
 * @name Joint.arrows.conditional
 * @memberOf Joint.arrows
 */
global.Joint.arrows.conditional = function(){
    var length = 15, // from the center to a (longer) end
        height = 7; // from the center to a (shorter) end
    return {
    path: ["M", length.toString(), 0,
           "L", 0, height.toString(),
           "L", (-1*length).toString(), 0,
           "L", 0, (-1*height).toString(), "z"],
    dx: length,
    dy: length,
    attrs: {
        stroke: "black",
        fill: "white",
        "stroke-width": 1.0
    }
    };
};

/**
 * Predefined StartEvent arrow. Only used for the connection of the StartEvent circle to the first Activity.
 * @name StartArrow
 * @memberOf Joint.dia.bpmn
 * @example
 * var StartArrow = Joint.dia.bpmn.StartArrow;
 * s1.joint(s2, StartArrow);
 */
bpmn.StartArrow = {
    startArrow: {type: "none"},
    endArrow: {type: "basic", size: 4},
    attrs: {"stroke-dasharray": "none"}
};

/**
 * Predefined conditional arrow. Used for the connection between activities based on conditions.
 * @name Arrow
 * @memberOf Joint.dia.bpmn
 * @example
 * var Arrow = Joint.dia.bpmn.Arrow;
 * s1.joint(s2, (Arrow.label = "anEvent", Arrow));
 */
bpmn.Arrow = {
    startArrow: {type: "conditional"},
    endArrow: {type: "basic", size: 4},
    attrs: {"stroke-dasharray": "none"},
    labelAttrs: { "font-size": "11", "fill": "#fff" },
    labelBoxAttrs: { "fill": "#444", "r": 2, "stroke": "#444", "stroke-width": 13 }
};

}(this));
