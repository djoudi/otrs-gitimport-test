// --
// Core.Agent.Admin.ProcessManagement.Canvas.js - provides the special module functions for the Process Management Diagram Canvas.
// Copyright (C) 2001-2012 OTRS AG, http://otrs.org/
// --
// $Id: Core.Agent.Admin.ProcessManagement.Canvas.js,v 1.39 2012-11-27 14:46:35 mab Exp $
// --
// This software comes with ABSOLUTELY NO WARRANTY. For details, see
// the enclosed file COPYING for license information (AGPL). If you
// did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
// --

/*global jsPlumb */

// Don't check this file for "dangling _", because of some needed JointJS functionality uses this
/*jslint nomen: false*/

"use strict";

var Core = Core || {};
Core.Agent = Core.Agent || {};
Core.Agent.Admin = Core.Agent.Admin || {};
Core.Agent.Admin.ProcessManagement = Core.Agent.Admin.ProcessManagement || {};

/**
 * @namespace
 * @exports TargetNS as Core.Agent.Admin.ProcessManagement.Canvas
 * @description
 *      This namespace contains the special module functions for the ProcessManagement Diagram Canvas module.
 */
Core.Agent.Admin.ProcessManagement.Canvas = (function (TargetNS) {

    var Elements = {};

    function GetCanvasSize($Element) {
        var MinWidth = 500,
            MinHeight = 500,
            MaxWidth = 0,
            MaxHeight = 0,
            ScreenWidth;

        // Find maximum X and maximum Y value in Layout config data.
        // This data was saved the last time the process was edited
        // it is possible to extend the canvas for larger drawings.
        // The minimum width is based on the available space (screen resolution)

        // Get width of surrounding element (possible canvas width)
        ScreenWidth = $Element.width();

        // Loop through available elements and find max needed width and height
        $.each(Core.Agent.Admin.ProcessManagement.ProcessLayout, function (Key, Value) {
            var Left = parseInt(Value.left, 10),
                Top = parseInt(Value.top, 10);

            if (Left > MaxWidth) {
                MaxWidth = Left + 110;
            }
            if (Top > MaxHeight) {
                MaxHeight = Top + 80;
            }
        });

        // Width should always be at least the screen width
        if (ScreenWidth > MaxWidth) {
            MaxWidth = ScreenWidth;
        }

        // The canvas should always have at least a minimum size
        if (MinWidth > MaxWidth) {
            MaxWidth = MinWidth;
        }
        if (MinHeight > MaxHeight) {
            MaxHeight = MinHeight;
        }

        return {
            Width: MaxWidth,
            Height: MaxHeight
        };
    }

    TargetNS.CreateStartEvent = function (PosX, PosY) {
        var DefaultX = 30,
            DefaultY = 30;

        PosX = PosX || DefaultX;
        PosY = PosY || DefaultY;

        $('#Canvas').append('<div id="StartEvent"></div>').find('#StartEvent').css({
            'top' : PosY + 'px',
            'left': PosX + 'px'
        });
    };

    TargetNS.CreateActivity = function (EntityID, EntityName, ActivityID, PosX, PosY) {

        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            ProcessEntityID = $('#ProcessEntityID').val();

        $('#Canvas')
            .append('<div class="Activity" id="' + EntityID + '"><span>' + EntityName + '</span><div class="Icon Loader"></div><div class="Icon Success"></div></div>')
            .find('#' + EntityID)
            .css({
                'top' : PosY + 'px',
                'left': PosX + 'px'
            })
            .bind('mouseenter.Activity', function() {
                TargetNS.ShowActivityTooltip($(this));
                TargetNS.ShowActivityDeleteButton($(this));
                if (TargetNS.DragActivityItem) {
                    $(this).addClass('ReadyToDrop');
                }
            })
            .bind('mouseleave.Activity', function() {
                $('#DiagramTooltip').hide();
                $(this).removeClass('ReadyToDrop').find('.DiagramDeleteLink').remove();
            })
            .bind('dblclick.Activity', function() {
                var Path = Core.Config.Get('Config.PopupPathActivity') + "EntityID=" + EntityID + ";ID=" + ActivityID;
                Core.Agent.Admin.ProcessManagement.ShowOverlay();
                Core.UI.Popup.OpenPopup(Path, 'Activity');
            });

        // make the activity able to accept transitions
        jsPlumb.makeTarget(EntityID, {
            anchor: 'Continuous',
            isTarget: true,
            detachable: true,
            reattach: true,
            endpoint: [ 'Dot', { radius: 7, hoverClass: 'EndpointHover' } ],
            paintStyle: { fillStyle: '#000' },
            parameters: {
                'Parent': EntityID
            }
        });

        // Add the Activity to our list of elements
        Elements[EntityID] = $('#' + EntityID);
    };

    TargetNS.CreateActivityDummy = function () {
        if (!$('#Dummy').length) {
            $('#Canvas').append('<div class="Activity" id="Dummy"><span>Dummy</span></div>').find('#Dummy').css({
                top: '10px',
                left: '10px'
            });
        }
    };

    TargetNS.ShowActivityTooltip = function ($Element) {
        var $tooltip = $('#DiagramTooltip'),
            text = '<h4>' + $Element.find('span').text() + '</h4>',
            position = { x: 0, y: 0},
            Activity = Core.Agent.Admin.ProcessManagement.ProcessData.Activity,
            ActivityDialogs,
            ElementID = $Element.attr('id');

        if (typeof Activity[$Element.attr('id')] === 'undefined') {
            return false;
        }

        ActivityDialogs = Activity[$Element.attr('id')].ActivityDialog;

        if (!$tooltip.length) {
            $tooltip = $('<div id="DiagramTooltip"></div>').css('display', 'none').appendTo('#Canvas');
        }
        else if ($tooltip.is(':visible')) {
            $tooltip.hide();
        }

        // calculate tooltip position
        // x: x-coordinate of canvas + x-coordinate of element within canvas + width of element
        position.x = parseInt($Element.css('left'), 10) + parseInt($Element.width(), 10) + 10;

        // y: y-coordinate of canvas + y-coordinate of element within canvas + height of element
        position.y = parseInt($Element.css('top'), 10) + 10;

        // Add content to the tooltip
        text += "<ul>";
        if (ActivityDialogs) {
            $.each(ActivityDialogs, function (Key, Value) {
                var Interfaces = Core.Agent.Admin.ProcessManagement.ProcessData.ActivityDialog[Value].Interface,
                    SelectedInterface = '';

                $.each(Interfaces, function (Key, Value) {
                    if (SelectedInterface.length) {
                        SelectedInterface += '/';
                    }
                    SelectedInterface += Value.substr(0,1);
                });

                text += "<li><span class=\"AvailableIn\">" + SelectedInterface + "</span> " + Core.Agent.Admin.ProcessManagement.ProcessData.ActivityDialog[Value].Name + " </li>";
            });
        }
        else {
            text += '<li class="NoDialogsAssigned">' + Core.Agent.Admin.ProcessManagement.Localization.NoDialogsAssigned + '</li>';
        }

        text += "</ul>";

        $tooltip
            .html(text)
            .css('top', position.y)
            .css('left', position.x)
            .show();
    };

    TargetNS.ShowActivityDeleteButton = function ($Element) {
        var $delete = $('.DiagramDeleteLink').clone(),
            position = { x: 0, y: 0},
            Activity = Core.Agent.Admin.ProcessManagement.ProcessData.Activity,
            ElementID = $Element.attr('id');

        if (typeof Activity[ElementID] === 'undefined') {
            return false;
        }

        if ($delete.is(':visible')) {
            $delete.hide();
        }

        $Element.append($delete);

        $delete
            .show()
            .unbind('click')
            .bind('click', function () {
                var Remove = confirm(Core.Agent.Admin.ProcessManagement.Localization.RemoveActivityMsg);
                if (Remove) {
                    TargetNS.RemoveActivity(ElementID);
                }
                return false;
            });
    };

    TargetNS.ShowActivityLoader = function (EntityID) {
        if (typeof Elements[EntityID] !== 'undefined') {
            $('#' + EntityID).find('span').hide().parent().find('.Loader').show();
        }
    };

    TargetNS.ShowActivityAddActivityDialogSuccess = function (EntityID) {
        if (typeof Elements[EntityID] !== 'undefined') {
            // show icon for success
            $('#' + EntityID).find('.Loader').hide().parent().find('.Success').show();

            // wait 1 second, fade success icon out and label back in
            window.setTimeout(function () {
                $('#' + EntityID).find('.Success').fadeOut('slow', function() {
                    $('#' + EntityID).find('span').fadeIn();
                });
            }, 1000);
        }
    };

    TargetNS.ShowActivityAddActivityDialogError = function (EntityID) {
        $('#' + EntityID).find('.Loader').hide().parent().find('span').show();
    };

    TargetNS.RemoveActivity = function (EntityID) {
        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            ProcessEntityID = $('#ProcessEntityID').val();

        // remove HTML elements
        $('#DiagramTooltip').hide();
        $('#' + EntityID).find('.DiagramDeleteLink').remove();

        // if Activity is StartActivity, this Activity cannot be removed...
        if (Config.Process[ProcessEntityID].StartActivity === EntityID) {
            alert(Core.Agent.Admin.ProcessManagement.Localization.ActivityCannotBeDeleted);
            return;
        }

        // update config
        // delete entity and all transitions starting *from* here
        if (typeof Config.Process[ProcessEntityID].Path[EntityID] !== 'undefined') {
            delete Config.Process[ProcessEntityID].Path[EntityID];
        }

        // delete Elements array entry
        Core.Agent.Admin.ProcessManagement.Canvas.RemoveActivityFromConfig(EntityID);

        // delete all transitions *to* this entity
        $.each(Config.Process[ProcessEntityID].Path, function (StartActivity, Value) {
            // the Value is a hash with the transition name as Key
            // loop again
            $.each(Value, function (Transition, EndActivity) {
                // Key is now the Transition
                // Value is a hash with a Key "ActivityID" which is possibly our deleted Entity
                if (EndActivity.ActivityEntityID && EndActivity.ActivityEntityID === EntityID) {
                    delete Config.Process[ProcessEntityID].Path[StartActivity][Transition];
                }
            });
        });

        // remove connections
        jsPlumb.detachAllConnections(EntityID);

        // remove element from canvas
        $('#Canvas').find('#' + EntityID).remove();
    };

    TargetNS.RemoveActivityFromConfig = function (EntityID) {
        delete Elements[EntityID];
    };

    TargetNS.UpdateElementPosition = function ($Element) {
        var EntityID;
        // Element can be "false" if newly placed on the canvas
        // otherwise it's an object
        if ($Element) {
            EntityID = $Element.attr('id');
            if (typeof Core.Agent.Admin.ProcessManagement.ProcessLayout[EntityID] !== 'undefined') {
                // Save new element position
                Core.Agent.Admin.ProcessManagement.ProcessLayout[EntityID] = {
                    left: parseInt($Element.css('left'), 10),
                    top: parseInt($Element.css('top'), 10)
                };
            }
        }
    };

    TargetNS.SetStartActivity = function (EntityID) {

        // Not more than one StartActivity allowed, function does not check this!
        // After the initialization of the canvas, an automatic setting of the StartActivity is not useful
        // Only the user can change this by moving the arrow
        if (typeof Elements[EntityID] !== 'undefined') {

            // Create the connection from StartEvent to StartActivity
            // We don't create the Endpoints here, because every Activity
            // creates its own Endpoint on CreateActivity()
            jsPlumb.connect({
                connector: [ 'Flowchart', { curviness: 0, margin: -1, showLoopback:false } ],
                paintStyle: { strokeStyle: "#000", lineWidth: 2 },
                source: 'StartEvent',
                target: EntityID,
                anchor: 'Continuous',
                endpoint: [ 'Blank' ],
                detachable: true,
                reattach: true,
                overlays: [
                    [ "PlainArrow", { location: -15, width: 20, length: 15 } ]
                ],
                parameters: {
                    'ID': 'StartTransition'
                }
            });
        }
    };

    TargetNS.CreateTransition = function (StartElement, EndElement, EntityID, TransitionName) {

        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            ProcessEntityID = $('#ProcessEntityID').val(),
            Path = Config.Process[ProcessEntityID].Path,
            StartActivity, EndActivity, OldActivity, Connection;

        StartActivity = Elements[StartElement];
        if (EndElement === "Dummy") {
            EndActivity = $('#Dummy').attr('id');
        }
        else {
            EndActivity = Elements[EndElement];
        }

        if ((typeof StartActivity === 'undefined') || (typeof EndActivity === 'undefined')) {
            return false;
        }

        // Get TransitionName from Config
        if (typeof TransitionName === 'undefined') {
            if (Config.Transition && Config.Transition[EntityID]) {
                TransitionName = Config.Transition[EntityID].Name;
            }
            else {
                TransitionName = 'NoName';
            }
        }

        Connection = jsPlumb.connect({
            connector: [ 'Flowchart', { curviness: 0, margin: -1, showLoopback:false } ],
            paintStyle: { strokeStyle: "#000", lineWidth: 2 },
            source: StartActivity,
            target: EndActivity,
            anchor: 'Continuous',
            endpoints: [
                "Blank",
                [ 'Dot', { radius: 7, hoverClass: 'EndpointHover' } ]
            ],
            endpointStyle: { fillStyle: '#000' },
            detachable: true,
            reattach: true,
            overlays: [
                [ "Diamond", { location: 18, width: 15, length: 25, paintStyle: { fillStyle: '#FFF', outlineWidth: 1, outlineColor: '#000'} } ],
                [ "PlainArrow", { location: -15, width: 20, length: 15 } ],
                [ "Label", { label: TransitionName, location: 0.5, cssClass: 'TransitionLabel', id: EntityID, events: {
                    mouseenter: function(labelOverlay, originalEvent) {
                        TargetNS.HighlightTransitionLabel(labelOverlay);
                        originalEvent.stopPropagation();
                        return false;
                    },
                    mouseexit: function(labelOverlay, originalEvent) {
                        TargetNS.UnHighlightTransitionLabel(labelOverlay);
                        originalEvent.stopPropagation();
                        return false;
                    }
                }}]
            ],
            parameters: {
                "TransitionID": EntityID
            }
        });
    };

    TargetNS.HighlightTransitionLabel = function(Connection) {

        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            ProcessEntityID = $('#ProcessEntityID').val(),
            Path = Config.Process[ProcessEntityID].Path,
            TransitionEntityID = Connection.id,
            PopupPath = Core.Config.Get('Config.PopupPathPath') + "ProcessEntityID=" + ProcessEntityID + ";TransitionEntityID=" + TransitionEntityID,
            StartActivityID = Connection.component.sourceId,
            Transition;

        if (TargetNS.DragTransitionAction) {
            $(Connection.canvas).addClass('ReadyToDrop');
            TargetNS.DragTransitionActionTransition = {
                TransitionID: TransitionEntityID,
                StartActivity: StartActivityID,
                Connection: Connection
            };
        }

        if (!$(Connection.canvas).find('.Delete').length) {
            $(Connection.canvas).append('<a class="Delete" href="#">x</a>').find('.Delete').bind('click', function(Event) {
                if (window.confirm(Core.Agent.Admin.ProcessManagement.Localization.RemoveTransitionMsg)) {
                    jsPlumb.detach(Connection.component);
                    delete Path[StartActivityID][TransitionEntityID];
                }
                Event.stopPropagation();
                return false;
            });
        }

        $(Connection.canvas).unbind('dblclick.Transition').bind('dblclick.Transition', function(Event) {
            Core.Agent.Admin.ProcessManagement.ShowOverlay();
            Core.UI.Popup.OpenPopup(PopupPath, 'Path');
            Event.stopPropagation();
            return false;
        });
    };

    TargetNS.UnHighlightTransitionLabel = function(Connection) {
        if (TargetNS.DragTransitionAction) {
            $(Connection.canvas).removeClass('ReadyToDrop');
            TargetNS.DragTransitionActionTransition = {};
        }
    };

    TargetNS.DragActivityItem = false;
    TargetNS.DragTransitionAction = false;
    TargetNS.DragTransitionActionTransition = {};

    TargetNS.DrawDiagram = function () {
        var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
            Layout = Core.Agent.Admin.ProcessManagement.ProcessLayout,
            ProcessEntityID = $('#ProcessEntityID').val(),
            StartActivity = Config.Process[ProcessEntityID].StartActivity,
            jsPlumbInstance = jsPlumb.getInstance();

        // Set some jsPlumb defaults
        jsPlumbInstance.importDefaults({
            Connector: [ 'Flowchart', { curviness: 0, margin: -1, showLoopback:false } ],
            paintStyle: { strokeStyle: "#000", lineWidth: 2 },
            Anchor: 'Continuous'
        });

        // Always start with drawing the start event element
        TargetNS.CreateStartEvent();

        // Draw all available Activities (Keys of the ProcessData-Path)
        $.each(Config.Process[ProcessEntityID].Path, function (Key, Value) {
            if (typeof Layout[Key] !== 'undefined') {
                TargetNS.CreateActivity(Key, Config.Activity[Key].Name, Config.Activity[Key].ID, Layout[Key].left, Layout[Key].top);
            }
            else {
                Core.Exception.Throw('Error: Activity without Layout Position!', 'ProcessError');
            }
        });

        // Start Activity
        if (typeof StartActivity !== 'undefined') {
            TargetNS.SetStartActivity(StartActivity);
        }

        // Now draw the Transitions
        $.each(Config.Process[ProcessEntityID].Path, function (Key, Value) {
            var StartActivityID = Key,
                TransitionID, EndActivityID,
                TransitionHash = Value;

            if (typeof TransitionHash !== 'undefined') {
                $.each(TransitionHash, function (Key, Value) {
                    TransitionID = Key;
                    // if EndActivity available, draw transition directly
                    if (typeof Value !== 'undefined') {
                        EndActivityID = Value.ActivityEntityID;
                        TargetNS.CreateTransition(StartActivityID, EndActivityID, TransitionID);
                    }

                    // if EndActivity is undefined draw transition with dummy
                    else {

                        // Create dummy activity to use for initial transition
                        TargetNS.CreateActivityDummy();

                        // Create transition between this Activity and DummyElement
                        TargetNS.CreateTransition(StartActivityID, 'Dummy', TransitionID);

                        // Remove Connection to DummyElement and delete DummyElement again
                        TargetNS.RemoveActivityDummy();
                    }
                });
            }
        });

        TargetNS.MakeDraggable();
    };

    TargetNS.MakeDraggable = function() {
        // make all activities draggable (note the z-index!)
        jsPlumb.draggable($('#Canvas .Activity'), {
            containment: '#Canvas',
            start: function() {
                $('#DiagramTooltip').hide();
                $(this).find('.DiagramDeleteLink').remove();
            },
            stop: function() {
                TargetNS.UpdateElementPosition($(this));
            }
        });
    };

    TargetNS.Redraw = function () {
        $('#Canvas').empty();
        TargetNS.Init();
    };

    TargetNS.Extend = function (CanvasSize) {
        var CanvasWidth,
            CanvasHeight;

        if (typeof CanvasSize !== 'undefined') {

            CanvasWidth = $('#Canvas').width() + parseInt(CanvasSize.Width, 10);
            CanvasHeight = $('#Canvas').height() + parseInt(CanvasSize.Height, 10);

            $('#Canvas').width(CanvasWidth).height(CanvasHeight);
        }
    };

    TargetNS.Init = function () {
        var CanvasSize = GetCanvasSize($('#Canvas')),
            CanvasWidth = CanvasSize.Width,
            CanvasHeight = CanvasSize.Height;

        // set the width and height of the drawing canvas,
        // based on the saved layout information (if available)
        $('#Canvas').width(CanvasWidth).height(CanvasHeight);

        // Init JsPlumb in Canvas mode (because of bugs with SVG in jQ1.6 in IE9)
        jsPlumb.setRenderMode(jsPlumb.CANVAS);

        // init binding to connection changes
        jsPlumb.bind('jsPlumbConnection', function(Data) {
            var Config = Core.Agent.Admin.ProcessManagement.ProcessData,
                ProcessEntityID = $('#ProcessEntityID').val(),
                Path = Config.Process[ProcessEntityID].Path,
                TransitionID, TransitionName;

            // check if we need to register a new StartActivity
            if (Data.sourceId === 'StartEvent') {
                Config.Process[ProcessEntityID].StartActivity = Data.targetId;

                // Correct transition arrows
                Data.connection.setPaintStyle({ strokeStyle: "#000", lineWidth: 2 });
                Data.connection.addOverlay([ "PlainArrow", { location: -15, width: 20, length: 15 } ]);

            }
            // in case the target is the dummy, its a whole new transition
            // and we need to mark it as "to be connected", so the user will
            // see that there is something to do with it
            else if (Data.targetId === 'Dummy') {
                Data.connection.setPaintStyle({ strokeStyle: "red", lineWidth: 4 });
                Data.targetEndpoint.setPaintStyle({ fillStyle: "red" });
            }
            else if (Data.targetId === Data.sourceId) {
                return false;
            }
            // otherwise, an existing transition has been (re)connected
            else {
                // get TransitionID and TransitionName
                TransitionID = TargetNS.LatestConnectionTransitionID;

                // Fallback: try to get the ID from the connection
                if (typeof TransitionID === 'undefined') {
                    TransitionID = Data.connection.getParameter('TransitionID');
                }

                if (Config.Transition && Config.Transition[TransitionID]) {
                    TransitionName = Config.Transition[TransitionID].Name;
                }
                else {
                    TransitionName = 'NoName';
                }

                // set new Path
                // this event also fires on the initial drawing of the diagram
                // we have to make sure, that existing data is not overwritten
                // if the config entry already exists, there is no need to redefine it
                if (typeof Path[Data.sourceId][TransitionID] === 'undefined') {
                    Path[Data.sourceId][TransitionID] = {
                        ActivityEntityID: Data.targetId
                    };
                }
                else if (Path[Data.sourceId][TransitionID].ActivityEntityID !== Data.targetId) {
                    Path[Data.sourceId][TransitionID].ActivityEntityID = Data.targetId;
                }

                // Correcting connection: setting parameters and overlays
                Data.connection.setParameter('TransitionID', TransitionID);
                Data.connection.setPaintStyle({ strokeStyle: "#000", lineWidth: 2 });
                Data.connection.addOverlay([ "Diamond", { location: 18, width: 15, length: 25, paintStyle: { fillStyle: '#FFF', outlineWidth: 1, outlineColor: '#000'} } ]);
                Data.connection.addOverlay([ "PlainArrow", { location: -15, width: 20, length: 15 } ]);
                Data.connection.addOverlay([ "Label", { label: TransitionName, location: 0.5, cssClass: 'TransitionLabel', id: TransitionID, events: { mouseenter: function(labelOverlay, originalEvent) {
                    TargetNS.HighlightTransitionLabel(labelOverlay);
                } } } ]);
            }
        });

        // init event to save transition ID, because information is lost while re-connecting connections
        jsPlumb.bind('beforeDrop', function(Data) {
           TargetNS.LatestConnectionTransitionID = Data.connection.getParameter('TransitionID');
           return true;
        });

        TargetNS.DrawDiagram();
    };

    return TargetNS;
}(Core.Agent.Admin.ProcessManagement.Canvas || {}));

/*jslint nomen: true*/