<?php echo '<?xml version="1.0" encoding="UTF-8"?>'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title>phpMemcachedAdmin <?php echo CURRENT_VERSION; ?></title>
    <script type="text/javascript" src="Public/Scripts/Script.js"></script>
    <style>
body {
  background-color: #FEFEFE;
  font-family: Verdana,Tahoma,"Segoe UI", Arial;
  font-size: 0.8em;
  margin-top: 10px;
}

a {
  color: #EEE;
  text-decoration: none;
}

a:hover {
  color: #A00
}

input,select,textarea {
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
  border-width: 1px;
    border-style: solid;
    border-color: #AAA;
  width: 298px;
  font-family: Tahoma;
  font-size: 1em;
}

textarea {
  width: 494px;
  resize: none;
}

select {
  width: 300px;
}

input:focus,textarea:focus {
    border-width: 1px;
    border-style: solid;
    border-color: #EEE;
}

div.warning-high {
  background-color: #FF2222;
}
span.warning-high{
  background-color: #AA1111;
}
div.warning-medium{
  background-color: #FF6633;
}
span.warning-medium{
  background-color: #AA4422;
}
div.warning-low{
  background-color: #FFFF33;
}
span.warning-low{
  background-color: #AAAA22;
}

input:hover {
  color: #A00;
}

img {
  border: none;
}
/** hr */
hr {
  height: 0;
  border: none;
  border-bottom-width: 1px;
    border-bottom-style: solid;
    border-bottom-color: #EEE;
}

.menu {
    border-width: 1px;
    border-style: solid;
    border-color: #a0312a;
  color: #eee;
  width: 198px;
}

.item {
  font-family: "Bitstream Vera Sans Mono",
             "Lucida Sans Typewriter",
             "DejaVu Sans Mono",
             Consolas,
             "Andale Mono",
             "Lucida Console",
             "Liberation Mono",
             "Nimbus Mono L",
             Monaco,
             "Courier New",
             Courier,
             monospace;
     cursor: hand;
}

.loading {
  text-decoration: blink;
  visibility: hidden;
}

.full-size {
  width: 980px;
}

.size-0 {
  width: 494px;
}

.size-1 {
  width: 696px;
}

.size-2 {
  width: 398px;
}

.size-4 {
  width: 290px;
}

.size-5 {
  width: 226px;
}

.size-6 {
  width: 110px;
}

.padding {
  padding: 3px 7px 3px 7px;
}

.corner {
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px;
}

.header {
    border-width: 1px;
    border-style: solid;
    border-color: #9c3c36;
  background: url("../Images/b5463f.png") repeat-x scroll 50% 50% #B5463F;
  font-weight: bold;
  color: #fff;
  clear: both
}

.sub-header {
  border-width: 1px;
    border-style: solid;
    border-color: #514845;
  background: url("../Images/635855.png") repeat-x scroll 50% 50% #635855;
  font-weight: bold;
  color: #fff;
  clear: both;
  margin-top: 10px
}

.container {
  border-width: 1px;
    border-style: solid;
    border-color: #d0d0d0;
  background: #ebebeb;
  font-weight: none;
  color: #000;
  margin-top: 1px;
  clear: both
}

.list {
  border-width: 1px;
    border-style: solid;
    border-color: #9c3c36;
  background: #B5463F;
  font-weight: bold;
  color: #fff
}

.button {
  padding: 1px 20px;
  -moz-border-radius: 2px;
  -webkit-border-radius: 2px;
  border-radius: 2px
}

.live {
  font-family: "Bitstream Vera Sans Mono",
             "Lucida Sans Typewriter",
             "DejaVu Sans Mono",
             Consolas,
             "Andale Mono",
             "Lucida Console",
             "Liberation Mono",
             "Nimbus Mono L",
             Monaco,
             "Courier New",
             Courier,
             monospace;
  font-size: 12px;
  overflow: visible;
  white-space: pre-wrap
}

.line {
  min-height: 18px;
  padding-top: 3px;
  padding-bottom: 2px;
  clear: both
}

.left {
  float: left;
  min-width: 126px;
  font-weight: bold
}

.right {
  float: right
}

.setting {
  min-width: 180px
}

.slabs {
  min-width: 104px
}
.help {
  cursor:help;
}

.container hr {
  height: 0;
  border: none;
  border-bottom-width: 1px;
    border-bottom-style: solid;
    border-bottom-color: #fff;
}

.grey {
  color: #EEE
}

.green {
  color: #40aaba
}

.red {
  background: #b5463f;
  color: #fff;
  font-weight: bold
}
table.datagrid { border-collapse: collapse; text-align: left; width: 100%; }
.datagrid {font: normal 12px/150% Arial, Helvetica, sans-serif; background: #fff; overflow: hidden; border: 1px solid #991821; -webkit-border-radius: 3px; -moz-border-radius: 3px; border-radius: 3px; }
table.datagrid td, table.datagrid th { padding: 3px 10px; }
table.datagrid thead th {background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #991821), color-stop(1, #80141C) );background:-moz-linear-gradient( center top, #991821 5%, #80141C 100% );filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#991821', endColorstr='#80141C');background-color:#991821; color:#FFFFFF; font-size: 15px; font-weight: bold; border-left: 1px solid #B01C26; }
table.datagrid thead th:first-child { border: none; }
table.datagrid tbody td { color: #80141C; border-left: 1px solid #F7CDCD;font-size: 12px;border-bottom: 1px solid #E1EEF4;font-weight: normal; }
table.datagrid tbody td a { color: #991821; }
table.datagrid tbody tr:nth-child(even) {
    background-color: #F7CDCD;
    color: #80141C;
}
table.datagrid tbody td:first-child { border-left: none; }
table.datagrid tbody tr:last-child td { border-bottom: none; }
    </style>
</head>
<body>
<div style="margin:0pt auto; width:1000px; clear:both;">
        <div style="font-weight:bold;font-size:1.2em;">phpMemcachedAdmin <sup><?php echo CURRENT_VERSION; ?></sup>
        </div>
        <div class="header corner full-size padding" style="text-align:center;margin-top:5px;">
<?php
# Live Stats view
if(basename($_SERVER['PHP_SELF']) == 'stats.php')
{ ?>
        Live Stats |
<?php
} else { ?>
        <a href="stats.php">See Live Stats </a> |
<?php
}
# Stats view
if(basename($_SERVER['PHP_SELF']) == 'index.php')
{ ?>
        Actually seeing
<?php
} else { ?>
        <a href="index.php">See Stats for </a>
<?php
}
# Server HTML select
echo Library_HTML_Components::serverSelect('server_select', (isset($_GET['server'])) ? $_GET['server'] : '', 'list', 'onchange="changeServer(this)"'); ?>
        |
<?php
# Commands view
if(basename($_SERVER['PHP_SELF']) == 'commands.php')
{ ?>
        Executing Commands on Servers
<?php
} else { ?>
        <a href="commands.php">Execute Commands on Servers</a>
<?php
}?>
        |
<?php
# Configure view
if(basename($_SERVER['PHP_SELF']) == 'configure.php')
{ ?>
        Editing Configuration
<?php
} else { ?>
        <a href="configure.php">Edit Configuration</a>
<?php
} ?>
    </div>

<!--[if IE]>
<div class="header corner full-size padding" style="text-align:center;margin-top:10px;">
Support browsers that contribute to open source, try <a href="http://www.firefox.com" target="_blank">Firefox</a> or <a href="http://www.google.com/chrome" target="_blank">Google Chrome</a>.
</div>
<![endif]-->
