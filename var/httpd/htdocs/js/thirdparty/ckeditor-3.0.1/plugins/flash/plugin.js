﻿/*
Copyright (c) 2003-2009, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

(function(){var a=/\.swf(?:$|\?)/i,b=/^\d+(?:\.\d+)?$/;function c(f){if(b.test(f))return f+'px';return f;};function d(f){var g=f.attributes;return g.type=='application/x-shockwave-flash'||a.test(g.src||'');};function e(f,g){var h=f.createFakeParserElement(g,'cke_flash','flash',true),i=h.attributes.style||'',j=g.attributes.width,k=g.attributes.height;if(typeof j!='undefined')i=h.attributes.style=i+'width:'+c(j)+';';if(typeof k!='undefined')i=h.attributes.style=i+'height:'+c(k)+';';return h;};CKEDITOR.plugins.add('flash',{init:function(f){f.addCommand('flash',new CKEDITOR.dialogCommand('flash'));f.ui.addButton('Flash',{label:f.lang.common.flash,command:'flash'});CKEDITOR.dialog.add('flash',this.path+'dialogs/flash.js');f.addCss('img.cke_flash{background-image: url('+CKEDITOR.getUrl(this.path+'images/placeholder.png')+');'+'background-position: center center;'+'background-repeat: no-repeat;'+'border: 1px solid #a9a9a9;'+'width: 80px;'+'height: 80px;'+'}');if(f.addMenuItems)f.addMenuItems({flash:{label:f.lang.flash.properties,command:'flash',group:'flash'}});if(f.contextMenu)f.contextMenu.addListener(function(g,h){if(g&&g.is('img')&&g.getAttribute('_cke_real_element_type')=='flash')return{flash:CKEDITOR.TRISTATE_OFF};});},afterInit:function(f){var g=f.dataProcessor,h=g&&g.dataFilter;if(h)h.addRules({elements:{'cke:object':function(i){var j=i.attributes,k=j.classid&&String(j.classid).toLowerCase();if(!k){for(var l=0;l<i.children.length;l++)if(i.children[l].name=='embed'){if(!d(i.children[l]))return null;return e(f,i);}return null;}return e(f,i);},'cke:embed':function(i){if(!d(i))return null;return e(f,i);}}},5);},requires:['fakeobjects']});})();CKEDITOR.tools.extend(CKEDITOR.config,{flashEmbedTagOnly:false,flashAddEmbedTag:true,flashConvertOnEdit:false});
