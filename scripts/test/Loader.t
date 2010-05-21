# --
# Loader.t - Loader backend tests
# Copyright (C) 2001-2010 OTRS AG, http://otrs.org/
# --
# $Id: Loader.t,v 1.1 2010-05-21 12:36:18 mg Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (AGPL). If you
# did not receive this file, see http://www.gnu.org/licenses/agpl.txt.
# --

use Kernel::System::Loader;

my $LoaderObject = Kernel::System::Loader->new( %{$Self} );

my $CSS = <<'EOF';
/**
 * @project     OTRS (http://www.otrs.org) - Agent Frontend
 * @version     $Revision: 1.1 $
 * @copyright   OTRS AG
 * @license     AGPL (http://www.gnu.org/licenses/agpl.txt)
 */

/**
 * @package     Skin "Default"
 * @section     Reset CSS
 * @note        The definitions in this file are used to reset browser-specific
 *              settings to defined default values.
 *
 */

/**
 * @see         YUI Reset CSS, http://developer.yahoo.com/yui/reset/
 */

@media all {

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, font, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td, hr {
    margin: 0;
    padding: 0;
    border: 0;
    outline: 0;
    font-weight: inherit;
    font-style: inherit;
    font-size: 100%;
    font-family: inherit;
    vertical-align: baseline;
    background-image: none;
    direction: inherit;
}

body {
    line-height: 1;
    color: black;
    background: white;
    text-align: left;
    margin: 0;
    padding: 0;
}

ol, ul {
    list-style: none;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
}

caption, th, td {
    text-align: left;
    font-weight: normal;
}

.RTL caption,
.RTL th,
.RTL td {
    text-align: right;
}

blockquote:before, blockquote:after, q:before, q:after {
    content: "";
}

blockquote, q {
    quotes: "" "";
}

a {
    text-decoration: none;
}

strong {
    font-weight: bold;
}

/**
 * @note    Move selects a bit to the top. This is ignored by some browsers,
 *          and seems to be needed for some linux environments (Firefox, Arora / Qt).
 */
select {
    margin-top: -1px;
}

} /* end @media */
EOF

my $ExpectedCSS
    = '@media all{html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,font,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,hr{margin:0;padding:0;border:0;outline:0;font-weight:inherit;font-style:inherit;font-size:100%;font-family:inherit;vertical-align:baseline;background-image:none;direction:inherit;}body{line-height:1;color:black;background:white;text-align:left;margin:0;padding:0;}ol,ul{list-style:none;}table{border-collapse:collapse;border-spacing:0;}caption,th,td{text-align:left;font-weight:normal;}.RTL caption,.RTL th,.RTL td{text-align:right;}blockquote:before,blockquote:after,q:before,q:after{content:"";}blockquote,q{quotes:"" "";}a{text-decoration:none;}strong{font-weight:bold;}select{margin-top:-1px;}}';

my $MinifiedCSS = $LoaderObject->MinifyCSS( Code => $CSS );

$Self->Is(
    $MinifiedCSS || '',
    $ExpectedCSS,
    'MinifyCSS()',
);

1;
