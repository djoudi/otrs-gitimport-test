﻿/*
 Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
 For licensing, see LICENSE.html or http://ckeditor.com/license
*/
(function(){function h(a){var a=a.document,c=a.getBody(),d=a.getDocumentElement();return"BackCompat"==a.$.compatMode?c:d}var g=function(a){if(a.window){var c=a.getCommand("maximize");if(!(c&&c.state==CKEDITOR.TRISTATE_ON)){var c=h(a),d=a.window.getViewPaneSize().height,b;b=c.getStyle("overflow-y");var f=c.getDocument(),e=CKEDITOR.dom.element.createFromHtml('<span style="margin:0;padding:0;border:0;clear:both;width:1px;height:1px;display:block;">'+(CKEDITOR.env.webkit?"&nbsp;":"")+"</span>",f);f[CKEDITOR.env.ie?
"getBody":"getDocumentElement"]().append(e);f=e.getDocumentPosition(f).y+e.$.offsetHeight;e.remove();c.setStyle("overflow-y",b);b=f+(a.config.autoGrow_bottomSpace||0);e=a.config.autoGrow_maxHeight||Infinity;b=Math.max(b,void 0!=a.config.autoGrow_minHeight?a.config.autoGrow_minHeight:200);b=Math.min(b,e);b!=d&&(b=a.fire("autoGrow",{currentHeight:d,newHeight:b}).newHeight,a.resize(a.container.getStyle("width"),b,!0));c.$.scrollHeight>c.$.clientHeight&&b<e?c.setStyle("overflow-y","hidden"):c.removeStyle("overflow-y")}}};
CKEDITOR.plugins.add("autogrow",{init:function(a){if(a.elementMode!=CKEDITOR.ELEMENT_MODE_INLINE)a.on("instanceReady",function(){if(a.editable().isInline())a.ui.space("contents").setStyle("height","auto");else{a.addCommand("autogrow",{exec:g,modes:{wysiwyg:1},readOnly:1,canUndo:!1,editorFocus:!1});var c={contentDom:1,key:1,selectionChange:1,insertElement:1,mode:1},d;for(d in c)a.on(d,function(a){"wysiwyg"==a.editor.mode&&setTimeout(function(){g(a.editor);g(a.editor)},100)});a.on("afterCommandExec",
function(b){"maximize"==b.data.name&&"wysiwyg"==b.editor.mode&&(b.data.command.state==CKEDITOR.TRISTATE_ON?h(a).removeStyle("overflow"):g(a))});a.config.autoGrow_onStartup&&a.execCommand("autogrow")}})}})})();