﻿/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

CKEDITOR.dialog.add('paste',function(a){var b=a.lang.clipboard,c=CKEDITOR.env.isCustomDomain();function d(e){var f=new CKEDITOR.dom.document(e.document),g=f.$;f.getById('cke_actscrpt').remove();CKEDITOR.env.ie?g.body.contentEditable='true':g.designMode='on';if(CKEDITOR.env.ie&&CKEDITOR.env.version<8)f.getWindow().on('blur',function(){g.selection.empty();});f.on('keydown',function(h){var i=h.data,j=i.getKeystroke(),k;switch(j){case 27:this.hide();k=1;break;case 9:case CKEDITOR.SHIFT+9:this.changeFocus(true);k=1;}k&&i.preventDefault();},this);a.fire('ariaWidget',new CKEDITOR.dom.element(e.frameElement));};return{title:b.title,minWidth:CKEDITOR.env.ie&&CKEDITOR.env.quirks?370:350,minHeight:CKEDITOR.env.quirks?250:245,onShow:function(){this.parts.dialog.$.offsetHeight;var e='<html dir="'+a.config.contentsLangDirection+'"'+' lang="'+(a.config.contentsLanguage||a.langCode)+'">'+'<head><style>body { margin: 3px; height: 95%; } </style></head><body>'+'<script id="cke_actscrpt" type="text/javascript">'+'window.parent.CKEDITOR.tools.callFunction( '+CKEDITOR.tools.addFunction(d,this)+', this );'+'</script></body>'+'</html>',f=CKEDITOR.dom.element.createFromHtml('<iframe frameborder="0"  allowTransparency="true"'+(c?" src=\"javascript:void((function(){document.open();document.domain='"+document.domain+"';"+'document.close();'+'})())"':'')+' role="region"'+' aria-label="'+b.pasteArea+'"'+' aria-describedby="'+this.getContentElement('general','pasteMsg').domId+'"'+' aria-multiple="true"'+'></iframe>');f.on('load',function(j){j.removeListener();var k=f.getFrameDocument().$;k.open();if(c)k.domain=document.domain;k.write(e);k.close();},this);f.setStyles({width:'346px',height:'130px','background-color':'white',border:'1px solid black'});f.setCustomData('dialog',this);var g=this.getContentElement('general','editing_area'),h=g.getElement();h.setHtml('');h.append(f);if(CKEDITOR.env.ie){var i=CKEDITOR.dom.element.createFromHtml('<span tabindex="-1" style="position:absolute;" role="presentation"></span>');i.on('focus',function(){f.$.contentWindow.focus();});h.append(i);g.focus=function(){i.focus();this.fire('focus');};}g.getInputElement=function(){return f;};if(CKEDITOR.env.ie){h.setStyle('display','block');h.setStyle('height',f.$.offsetHeight+2+'px');}},onHide:function(){if(CKEDITOR.env.ie)this.getParentEditor().document.getBody().$.contentEditable='true';},onLoad:function(){if((CKEDITOR.env.ie7Compat||CKEDITOR.env.ie6Compat)&&a.lang.dir=='rtl')this.parts.contents.setStyle('overflow','hidden');
},onOk:function(){var e=this.getContentElement('general','editing_area').getElement(),f=e.getElementsByTag('iframe').getItem(0),g=this.getParentEditor(),h=f.$.contentWindow.document.body.innerHTML;setTimeout(function(){g.fire('paste',{html:h});},0);},contents:[{id:'general',label:a.lang.common.generalTab,elements:[{type:'html',id:'securityMsg',html:'<div style="white-space:normal;width:340px;">'+b.securityMsg+'</div>'},{type:'html',id:'pasteMsg',html:'<div style="white-space:normal;width:340px;">'+b.pasteMsg+'</div>'},{type:'html',id:'editing_area',style:'width: 100%; height: 100%;',html:'',focus:function(){var e=this.getInputElement().$.contentWindow;setTimeout(function(){e.focus();},500);}}]}]};});
