﻿/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

(function(){var a;function b(i){return i.type==CKEDITOR.NODE_TEXT&&i.getLength()>0&&(!a||!i.isReadOnly());};function c(i){return!(i.type==CKEDITOR.NODE_ELEMENT&&i.isBlockBoundary(CKEDITOR.tools.extend({},CKEDITOR.dtd.$empty,CKEDITOR.dtd.$nonEditable)));};var d=function(){var i=this;return{textNode:i.textNode,offset:i.offset,character:i.textNode?i.textNode.getText().charAt(i.offset):null,hitMatchBoundary:i._.matchBoundary};},e=['find','replace'],f=[['txtFindFind','txtFindReplace'],['txtFindCaseChk','txtReplaceCaseChk'],['txtFindWordChk','txtReplaceWordChk'],['txtFindCyclic','txtReplaceCyclic']];function g(i){var j,k,l,m;j=i==='find'?1:0;k=1-j;var n,o=f.length;for(n=0;n<o;n++){l=this.getContentElement(e[j],f[n][j]);m=this.getContentElement(e[k],f[n][k]);m.setValue(l.getValue());}};var h=function(i,j){var k=new CKEDITOR.style(CKEDITOR.tools.extend({fullMatch:true,childRule:function(){return 0;}},i.config.find_highlight)),l=function(y,z){var A=this,B=new CKEDITOR.dom.walker(y);B.guard=z?c:function(C){!c(C)&&(A._.matchBoundary=true);};B.evaluator=b;B.breakOnFalse=1;if(y.startContainer.type==CKEDITOR.NODE_TEXT){this.textNode=y.startContainer;this.offset=y.startOffset-1;}this._={matchWord:z,walker:B,matchBoundary:false};};l.prototype={next:function(){return this.move();},back:function(){return this.move(true);},move:function(y){var A=this;var z=A.textNode;if(z===null)return d.call(A);A._.matchBoundary=false;if(z&&y&&A.offset>0){A.offset--;return d.call(A);}else if(z&&A.offset<z.getLength()-1){A.offset++;return d.call(A);}else{z=null;while(!z){z=A._.walker[y?'previous':'next'].call(A._.walker);if(A._.matchWord&&!z||A._.walker._.end)break;}A.textNode=z;if(z)A.offset=y?z.getLength()-1:0;else A.offset=0;}return d.call(A);}};var m=function(y,z){this._={walker:y,cursors:[],rangeLength:z,highlightRange:null,isMatched:0};};m.prototype={toDomRange:function(){var y=new CKEDITOR.dom.range(i.document),z=this._.cursors;if(z.length<1){var A=this._.walker.textNode;if(A)y.setStartAfter(A);else return null;}else{var B=z[0],C=z[z.length-1];y.setStart(B.textNode,B.offset);y.setEnd(C.textNode,C.offset+1);}return y;},updateFromDomRange:function(y){var B=this;var z,A=new l(y);B._.cursors=[];do{z=A.next();if(z.character)B._.cursors.push(z);}while(z.character)B._.rangeLength=B._.cursors.length;},setMatched:function(){this._.isMatched=true;},clearMatched:function(){this._.isMatched=false;},isMatched:function(){return this._.isMatched;},highlight:function(){var B=this;if(B._.cursors.length<1)return;
if(B._.highlightRange)B.removeHighlight();var y=B.toDomRange(),z=y.createBookmark();k.applyToRange(y);y.moveToBookmark(z);B._.highlightRange=y;var A=y.startContainer;if(A.type!=CKEDITOR.NODE_ELEMENT)A=A.getParent();A.scrollIntoView();B.updateFromDomRange(y);},removeHighlight:function(){var z=this;if(!z._.highlightRange)return;var y=z._.highlightRange.createBookmark();k.removeFromRange(z._.highlightRange);z._.highlightRange.moveToBookmark(y);z.updateFromDomRange(z._.highlightRange);z._.highlightRange=null;},isReadOnly:function(){if(!this._.highlightRange)return 0;return this._.highlightRange.startContainer.isReadOnly();},moveBack:function(){var A=this;var y=A._.walker.back(),z=A._.cursors;if(y.hitMatchBoundary)A._.cursors=z=[];z.unshift(y);if(z.length>A._.rangeLength)z.pop();return y;},moveNext:function(){var A=this;var y=A._.walker.next(),z=A._.cursors;if(y.hitMatchBoundary)A._.cursors=z=[];z.push(y);if(z.length>A._.rangeLength)z.shift();return y;},getEndCharacter:function(){var y=this._.cursors;if(y.length<1)return null;return y[y.length-1].character;},getNextCharacterRange:function(y){var z,A,B=this._.cursors;if((z=B[B.length-1])&&z.textNode)A=new l(n(z));else A=this._.walker;return new m(A,y);},getCursors:function(){return this._.cursors;}};function n(y,z){var A=new CKEDITOR.dom.range();A.setStart(y.textNode,z?y.offset:y.offset+1);A.setEndAt(i.document.getBody(),CKEDITOR.POSITION_BEFORE_END);return A;};function o(y){var z=new CKEDITOR.dom.range();z.setStartAt(i.document.getBody(),CKEDITOR.POSITION_AFTER_START);z.setEnd(y.textNode,y.offset);return z;};var p=0,q=1,r=2,s=function(y,z){var A=[-1];if(z)y=y.toLowerCase();for(var B=0;B<y.length;B++){A.push(A[B]+1);while(A[B+1]>0&&y.charAt(B)!=y.charAt(A[B+1]-1))A[B+1]=A[A[B+1]-1]+1;}this._={overlap:A,state:0,ignoreCase:!!z,pattern:y};};s.prototype={feedCharacter:function(y){var z=this;if(z._.ignoreCase)y=y.toLowerCase();for(;;){if(y==z._.pattern.charAt(z._.state)){z._.state++;if(z._.state==z._.pattern.length){z._.state=0;return r;}return q;}else if(!z._.state)return p;else z._.state=z._.overlap[z._.state];}return null;},reset:function(){this._.state=0;}};var t=/[.,"'?!;: \u0085\u00a0\u1680\u280e\u2028\u2029\u202f\u205f\u3000]/,u=function(y){if(!y)return true;var z=y.charCodeAt(0);return z>=9&&z<=13||z>=8192&&z<=8202||t.test(y);},v={searchRange:null,matchRange:null,find:function(y,z,A,B,C,D){var M=this;if(!M.matchRange)M.matchRange=new m(new l(M.searchRange),y.length);else{M.matchRange.removeHighlight();M.matchRange=M.matchRange.getNextCharacterRange(y.length);
}var E=new s(y,!z),F=p,G='%';while(G!==null){M.matchRange.moveNext();while(G=M.matchRange.getEndCharacter()){F=E.feedCharacter(G);if(F==r)break;if(M.matchRange.moveNext().hitMatchBoundary)E.reset();}if(F==r){if(A){var H=M.matchRange.getCursors(),I=H[H.length-1],J=H[0],K=new l(o(J),true),L=new l(n(I),true);if(!(u(K.back().character)&&u(L.next().character)))continue;}M.matchRange.setMatched();if(C!==false)M.matchRange.highlight();return true;}}M.matchRange.clearMatched();M.matchRange.removeHighlight();if(B&&!D){M.searchRange=w(1);M.matchRange=null;return arguments.callee.apply(M,Array.prototype.slice.call(arguments).concat([true]));}return false;},replaceCounter:0,replace:function(y,z,A,B,C,D,E){var J=this;a=1;var F=0;if(J.matchRange&&J.matchRange.isMatched()&&!J.matchRange._.isReplaced&&!J.matchRange.isReadOnly()){J.matchRange.removeHighlight();var G=J.matchRange.toDomRange(),H=i.document.createText(A);if(!E){var I=i.getSelection();I.selectRanges([G]);i.fire('saveSnapshot');}G.deleteContents();G.insertNode(H);if(!E){I.selectRanges([G]);i.fire('saveSnapshot');}J.matchRange.updateFromDomRange(G);if(!E)J.matchRange.highlight();J.matchRange._.isReplaced=true;J.replaceCounter++;F=1;}else F=J.find(z,B,C,D,!E);a=0;return F;}};function w(y){var z,A=i.getSelection(),B=i.document.getBody();if(A&&!y){z=A.getRanges()[0].clone();z.collapse(true);}else{z=new CKEDITOR.dom.range();z.setStartAt(B,CKEDITOR.POSITION_AFTER_START);}z.setEndAt(B,CKEDITOR.POSITION_BEFORE_END);return z;};var x=i.lang.findAndReplace;return{title:x.title,resizable:CKEDITOR.DIALOG_RESIZE_NONE,minWidth:350,minHeight:165,buttons:[CKEDITOR.dialog.cancelButton],contents:[{id:'find',label:x.find,title:x.find,accessKey:'',elements:[{type:'hbox',widths:['230px','90px'],children:[{type:'text',id:'txtFindFind',label:x.findWhat,isChanged:false,labelLayout:'horizontal',accessKey:'F'},{type:'button',align:'left',style:'width:100%',label:x.find,onClick:function(){var y=this.getDialog();if(!v.find(y.getValueOf('find','txtFindFind'),y.getValueOf('find','txtFindCaseChk'),y.getValueOf('find','txtFindWordChk'),y.getValueOf('find','txtFindCyclic')))alert(x.notFoundMsg);}}]},{type:'vbox',padding:0,children:[{type:'checkbox',id:'txtFindCaseChk',isChanged:false,style:'margin-top:28px',label:x.matchCase},{type:'checkbox',id:'txtFindWordChk',isChanged:false,label:x.matchWord},{type:'checkbox',id:'txtFindCyclic',isChanged:false,'default':true,label:x.matchCyclic}]}]},{id:'replace',label:x.replace,accessKey:'M',elements:[{type:'hbox',widths:['230px','90px'],children:[{type:'text',id:'txtFindReplace',label:x.findWhat,isChanged:false,labelLayout:'horizontal',accessKey:'F'},{type:'button',align:'left',style:'width:100%',label:x.replace,onClick:function(){var y=this.getDialog();
if(!v.replace(y,y.getValueOf('replace','txtFindReplace'),y.getValueOf('replace','txtReplace'),y.getValueOf('replace','txtReplaceCaseChk'),y.getValueOf('replace','txtReplaceWordChk'),y.getValueOf('replace','txtReplaceCyclic')))alert(x.notFoundMsg);}}]},{type:'hbox',widths:['230px','90px'],children:[{type:'text',id:'txtReplace',label:x.replaceWith,isChanged:false,labelLayout:'horizontal',accessKey:'R'},{type:'button',align:'left',style:'width:100%',label:x.replaceAll,isChanged:false,onClick:function(){var y=this.getDialog(),z;v.replaceCounter=0;v.searchRange=w(1);if(v.matchRange){v.matchRange.removeHighlight();v.matchRange=null;}i.fire('saveSnapshot');while(v.replace(y,y.getValueOf('replace','txtFindReplace'),y.getValueOf('replace','txtReplace'),y.getValueOf('replace','txtReplaceCaseChk'),y.getValueOf('replace','txtReplaceWordChk'),false,true)){}if(v.replaceCounter){alert(x.replaceSuccessMsg.replace(/%1/,v.replaceCounter));i.fire('saveSnapshot');}else alert(x.notFoundMsg);}}]},{type:'vbox',padding:0,children:[{type:'checkbox',id:'txtReplaceCaseChk',isChanged:false,label:x.matchCase},{type:'checkbox',id:'txtReplaceWordChk',isChanged:false,label:x.matchWord},{type:'checkbox',id:'txtReplaceCyclic',isChanged:false,'default':true,label:x.matchCyclic}]}]}],onLoad:function(){var y=this,z,A,B=0;this.on('hide',function(){B=0;});this.on('show',function(){B=1;});this.selectPage=CKEDITOR.tools.override(this.selectPage,function(C){return function(D){C.call(y,D);var E=y._.tabs[D],F,G,H;G=D==='find'?'txtFindFind':'txtFindReplace';H=D==='find'?'txtFindWordChk':'txtReplaceWordChk';z=y.getContentElement(D,G);A=y.getContentElement(D,H);if(!E.initialized){F=CKEDITOR.document.getById(z._.inputId);E.initialized=true;}if(B)g.call(this,D);};});},onShow:function(){v.searchRange=w();this.selectPage(j);},onHide:function(){var y;if(v.matchRange&&v.matchRange.isMatched()){v.matchRange.removeHighlight();i.focus();y=v.matchRange.toDomRange();if(y)i.getSelection().selectRanges([y]);}delete v.matchRange;},onFocus:function(){if(j=='replace')return this.getContentElement('replace','txtFindReplace');else return this.getContentElement('find','txtFindFind');}};};CKEDITOR.dialog.add('find',function(i){return h(i,'find');});CKEDITOR.dialog.add('replace',function(i){return h(i,'replace');});})();
