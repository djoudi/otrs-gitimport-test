﻿/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.dialog.add('button',function(a){return{title:a.lang.button.title,minWidth:350,minHeight:150,onShow:function(){var d=this;delete d.button;var b=d.getParentEditor().getSelection().getSelectedElement();if(b&&b.is('input')){var c=b.getAttribute('type');if(c in {button:1,reset:1,submit:1}){d.button=b;d.setupContent(b);}}},onOk:function(){var b,c=this.button,d=!c;if(d){b=this.getParentEditor();c=b.document.createElement('input');}if(d)b.insertElement(c);this.commitContent({element:c});},contents:[{id:'info',label:a.lang.button.title,title:a.lang.button.title,elements:[{id:'_cke_saved_name',type:'text',label:a.lang.common.name,'default':'',setup:function(b){this.setValue(b.getAttribute('_cke_saved_name')||b.getAttribute('name')||'');},commit:function(b){var c=b.element;if(this.getValue())c.setAttribute('_cke_saved_name',this.getValue());else{c.removeAttribute('_cke_saved_name');c.removeAttribute('name');}}},{id:'value',type:'text',label:a.lang.button.text,accessKey:'V','default':'',setup:function(b){this.setValue(b.getAttribute('value')||'');},commit:function(b){var c=b.element;if(this.getValue())c.setAttribute('value',this.getValue());else c.removeAttribute('value');}},{id:'type',type:'select',label:a.lang.button.type,'default':'button',accessKey:'T',items:[[a.lang.button.typeBtn,'button'],[a.lang.button.typeSbm,'submit'],[a.lang.button.typeRst,'reset']],setup:function(b){this.setValue(b.getAttribute('type')||'');},commit:function(b){var c=b.element;if(CKEDITOR.env.ie){var d=c.getAttribute('type'),e=this.getValue();if(e!=d){var f=CKEDITOR.dom.element.createFromHtml('<input type="'+e+'"></input>',a.document);c.copyAttributes(f,{type:1});f.replace(c);a.getSelection().selectElement(f);b.element=f;}}else c.setAttribute('type',this.getValue());}}]}]};});
