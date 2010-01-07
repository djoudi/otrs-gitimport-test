﻿/*
Copyright (c) 2003-2010, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/

/**
 * @fileOverview Contains the first and essential part of the {@link CKEDITOR}
 *		object definition.
 */

// #### Compressed Code
// Must be updated on changes in the script, as well as updated in the
// ckeditor_source.js and ckeditor_basic_source.js files.

// if(!window.CKEDITOR)window.CKEDITOR=(function(){var a={timestamp:'',version:'3.1',rev:'4891',_:{},status:'unloaded',basePath:(function(){var d=window.CKEDITOR_BASEPATH||'';if(!d){var e=document.getElementsByTagName('script');for(var f=0;f<e.length;f++){var g=e[f].src.match(/(^|.*[\\\/])ckeditor(?:_basic)?(?:_source)?.js(?:\?.*)?$/i);if(g){d=g[1];break;}}}if(d.indexOf('://')==-1)if(d.indexOf('/')===0)d=location.href.match(/^.*?:\/\/[^\/]*/)[0]+d;else d=location.href.match(/^[^\?]*\/(?:)/)[0]+d;return d;})(),getUrl:function(d){if(d.indexOf('://')==-1&&d.indexOf('/')!==0)d=this.basePath+d;if(this.timestamp&&d.charAt(d.length-1)!='/')d+=(d.indexOf('?')>=0?'&':'?')+('t=')+this.timestamp;return d;}},b=window.CKEDITOR_GETURL;if(b){var c=a.getUrl;a.getUrl=function(d){return b.call(a,d)||c.call(a,d);};}return a;})();

// #### Raw code
// ATTENTION: read the above "Compressed Code" notes when changing this code.

if ( !window.CKEDITOR )
{
	/**
	 * This is the API entry point. The entire CKEditor code runs under this object.
	 * @name CKEDITOR
	 * @namespace
	 * @example
	 */
	window.CKEDITOR = (function()
	{
		var CKEDITOR =
		/** @lends CKEDITOR */
		{

			/**
			 * A constant string unique for each release of CKEditor. Its value
			 * is used, by default, to build the URL for all resources loaded
			 * by the editor code, guaranteing clean cache results when
			 * upgrading.
			 * @type String
			 * @example
			 * alert( CKEDITOR.timestamp );  // e.g. '87dm'
			 */
			// The production implementation contains a fixed timestamp, unique
			// for each release, generated by the releaser.
			// (Base 36 value of each component of YYMMDDHH - 4 chars total - e.g. 87bm == 08071122)
			timestamp : 'A06B',

			/**
			 * Contains the CKEditor version number.
			 * @type String
			 * @example
			 * alert( CKEDITOR.version );  // e.g. 'CKEditor 3.0 Beta'
			 */
			version : '3.1',

			/**
			 * Contains the CKEditor revision number.
			 * Revision number is incremented automatically after each modification of CKEditor source code.
			 * @type String
			 * @example
			 * alert( CKEDITOR.revision );  // e.g. '3975'
			 */
			revision : '4891',

			/**
			 * Private object used to hold core stuff. It should not be used out of
			 * the API code as properties defined here may change at any time
			 * without notice.
			 * @private
			 */
			_ : {},

			/**
			 * Indicates the API loading status. The following status are available:
			 *		<ul>
			 *			<li><b>unloaded</b>: the API is not yet loaded.</li>
			 *			<li><b>basic_loaded</b>: the basic API features are available.</li>
			 *			<li><b>basic_ready</b>: the basic API is ready to load the full core code.</li>
			 *			<li><b>loading</b>: the full API is being loaded.</li>
			 *			<li><b>ready</b>: the API can be fully used.</li>
			 *		</ul>
			 * @type String
			 * @example
			 * if ( <b>CKEDITOR.status</b> == 'ready' )
			 * {
			 *     // The API can now be fully used.
			 * }
			 */
			status : 'unloaded',

			/**
			 * Contains the full URL for the CKEditor installation directory.
			 * It's possible to manually provide the base path by setting a
			 * global variable named CKEDITOR_BASEPATH. This global variable
			 * must be set "before" the editor script loading.
			 * @type String
			 * @example
			 * alert( <b>CKEDITOR.basePath</b> );  // "http://www.example.com/ckeditor/" (e.g.)
			 */
			basePath : (function()
			{
				// ATTENTION: fixes on this code must be ported to
				// var basePath in "core/loader.js".

				// Find out the editor directory path, based on its <script> tag.
				var path = window.CKEDITOR_BASEPATH || '';

				if ( !path )
				{
					var scripts = document.getElementsByTagName( 'script' );

					for ( var i = 0 ; i < scripts.length ; i++ )
					{
						var match = scripts[i].src.match( /(^|.*[\\\/])ckeditor(?:_basic)?(?:_source)?.js(?:\?.*)?$/i );

						if ( match )
						{
							path = match[1];
							break;
						}
					}
				}

				// In IE (only) the script.src string is the raw valued entered in the
				// HTML. Other browsers return the full resolved URL instead.
				if ( path.indexOf('://') == -1 )
				{
					// Absolute path.
					if ( path.indexOf( '/' ) === 0 )
						path = location.href.match( /^.*?:\/\/[^\/]*/ )[0] + path;
					// Relative path.
					else
						path = location.href.match( /^[^\?]*\/(?:)/ )[0] + path;
				}

				return path;
			})(),

			/**
			 * Gets the full URL for CKEditor resources. By default, URLs
			 * returned by this function contains a querystring parameter ("t")
			 * set to the {@link CKEDITOR.timestamp} value.
			 * It's possible to provide a custom implementation to this
			 * function by setting a global variable named CKEDITOR_GETURL.
			 * This global variable must be set "before" the editor script
			 * loading. If the custom implementation returns nothing, the
			 * default implementation is used.
			 * @returns {String} The full URL.
			 * @example
			 * // e.g. http://www.example.com/ckeditor/skins/default/editor.css?t=87dm
			 * alert( CKEDITOR.getUrl( 'skins/default/editor.css' ) );
			 * @example
			 * // e.g. http://www.example.com/skins/default/editor.css?t=87dm
			 * alert( CKEDITOR.getUrl( '/skins/default/editor.css' ) );
			 * @example
			 * // e.g. http://www.somesite.com/skins/default/editor.css?t=87dm
			 * alert( CKEDITOR.getUrl( 'http://www.somesite.com/skins/default/editor.css' ) );
			 */
			getUrl : function( resource )
			{
				// If this is not a full or absolute path.
				if ( resource.indexOf('://') == -1 && resource.indexOf( '/' ) !== 0 )
					resource = this.basePath + resource;

				// Add the timestamp, except for directories.
				if ( this.timestamp && resource.charAt( resource.length - 1 ) != '/' )
					resource += ( resource.indexOf( '?' ) >= 0 ? '&' : '?' ) + 't=' + this.timestamp;

				return resource;
			}
		};

		// Make it possible to override the getUrl function with a custom
		// implementation pointing to a global named CKEDITOR_GETURL.
		var newGetUrl = window.CKEDITOR_GETURL;
		if ( newGetUrl )
		{
			var originalGetUrl = CKEDITOR.getUrl;
			CKEDITOR.getUrl = function ( resource )
			{
				return newGetUrl.call( CKEDITOR, resource ) ||
					originalGetUrl.call( CKEDITOR, resource );
			};
		}

		return CKEDITOR;
	})();
}

// PACKAGER_RENAME( CKEDITOR )
