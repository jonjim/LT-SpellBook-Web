<!doctype html>
<html lang="en">
<?php

/*********************************************

Online Spell List Guide for the Lorien Trust LRP System

Development by Jonathan Kane on behalf of the Tarantula Faction
Enquiries to jon.kane@msdl.net

*********************************************/

?>
<head>
	<meta charset="utf-8">
	<title>Spell Lists</title>
	<link rel="stylesheet" href="themes/black-tie/jquery.ui.all.css">
	<script src="js/jquery-1.9.1.js"></script>
	<script src="js/jquery.ui.core.js"></script>
	<script src="js/jquery.ui.widget.js"></script>
	<script src="js/jquery.ui.tabs.js"></script>
	<script src="js/jquery.ui.mouse.js"></script>
	<script src="js/jquery.ui.draggable.js"></script>
	<script src="js/jquery.ui.position.js"></script>
	<script src="js/jquery.ui.resizable.js"></script>
	<script src="js/jquery.ui.button.js"></script>
	<script src="js/jquery.ui.dialog.js"></script>
	<script>
	$(function() {
		$( "#tabs" ).tabs().addClass( "ui-tabs-vertical ui-helper-clearfix" );
    $( "#tabs li" ).removeClass( "ui-corner-top" ).addClass( "ui-corner-left" );
		});
	    $(function (){
        $('a.ajax').click(function() {
            var url = this.href;
            // show a spinner or something via css
            var dialog = $('<div style="display:none" class="loading"></div>').appendTo('body');
            // open the dialog
			
			dialog.dialog({
				
                // add a close listener to prevent adding multiple divs to the document
                close: function(event, ui) {
                    // remove div with all data and events
                    dialog.remove();
				
                },
                modal: true,
				width: '600',
				title: 'Spell Description',
				position: {
    my:'center',
    at:'center',
    offset:'0 -200',
    collision:'none'
  },
				
				});
            // load remote content
			
            dialog.load(
				url, 
                {}, // omit this param object to issue a GET request instead a POST request, otherwise you may provide post parameters within the object
                function (responseText, textStatus, XMLHttpRequest) {
                    // remove the loading class
                    dialog.removeClass('loading');
                }
            );
			//prevent the browser to follow the link
            return false;
			
        });
		
    });

	</script>
	  <style>
  .ui-tabs-vertical { width: auto; }
  .ui-tabs-vertical .ui-tabs-nav { padding: .2em .1em .2em .2em; float: left; width: 12em; }
  .ui-tabs-vertical .ui-tabs-nav li { clear: left; width: 100%; border-bottom-width: 1px !important; border-right-width: 0 !important; margin: 0 -1px .2em 0; }
  .ui-tabs-vertical .ui-tabs-nav li a { display:block; }
  .ui-tabs-vertical .ui-tabs-nav li.ui-tabs-active { padding-bottom: 0; padding-right: .1em; border-right-width: 1px; border-right-width: 1px; }
  .ui-tabs-vertical .ui-tabs-panel { padding: 1em; float: left; width: auto;}
  </style>
</head>
<body>
<?php 
class SPdb extends SQLite3{
	function __construct(){
		$this->open('inc/spelllist.sqlite');
	}
}
$db = new SPdb();
if (!$db) {echo "Database Error";}

function spell_table($list){
	global $db;
	$spelllist = $db->query("SELECT * FROM spell WHERE list LIKE '%" . $list . "%'");
	echo "<table class=\"level1\"><th>First Level</th>";
	while ($row=$spelllist->fetchArray(SQLITE3_ASSOC)){
		if ($row['level'] == "1") { 
			echo "<tr><td><a href=\"inc/spdesc.php?id=" . $row['id'] ."\" class=\"ajax\">" . $row['name'] ."</a></td></tr>"; 
		}
	}
	echo "</table>";
	echo "<table class=\"level2\"><th>Second Level</th>";
	$spelllist = $db->query("SELECT * FROM spell WHERE list LIKE '%" . $list . "%'");
	while ($row=$spelllist->fetchArray(SQLITE3_ASSOC)){
		if ($row['level'] == "2") {
			echo "<tr><td><a href=\"inc/spdesc.php?id=" . $row['id'] ."\" class=\"ajax\">" . $row['name'] ."</a></td></tr>"; 
		}
	}
	echo "</table>";
	echo "<table class=\"level3\"><th>Third Level</th>";
	$spelllist = $db->query("SELECT * FROM spell WHERE list LIKE '%" . $list . "%'");
	while ($row=$spelllist->fetchArray(SQLITE3_ASSOC)){
		if ($row['level'] == "3") {
			echo "<tr><td><a href=\"inc/spdesc.php?id=" . $row['id'] ."\" class=\"ajax\">" . $row['name'] ."</a></td></tr>";
		}
	}
	echo "</table>"; 
}
?>


<div id="tabs">
	<ul>
		<li><a href="#stdinc">Standard Incantation</a></li>
		<li><a href="#linc">Light Incantation</a></li>
		<li><a href="#dinc">Dark Incantation</a></li>
		<li><a href="#spcast">Spellcasting</a></li>
		<li><a href="#ench">Enchanting</a></li>
		<li><a href="#shmag">Shadow Magic</a></li>
		<li><a href="#heal">Healing</a></li>
		<li><a href="#cor">Corruption</a></li>
		<li><a href="#summon">Summoning</a></li>
	</ul>
	
	<div id="stdinc">
		<?php	spell_table("stdinc");	?>
	</div>
	<div id="linc">
		<?php	spell_table("linc");	?>
	</div>
	<div id="dinc">
		<?php	spell_table("darkinc");	?>
	</div>
	<div id="spcast">
		<?php	spell_table("spcast");	?>
	</div>
	<div id="ench">
		<?php	spell_table("ench"); 	?>
	</div>
	<div id="shmag">
		<?php	spell_table("shmag"); 	?>
	</div>
	<div id="heal">
		<?php	spell_table("heal");	?>
	</div>
	<div id="cor">
		<?php	spell_table("cor"); 	?>
	</div>
	<div id="summon">
		<?php
		echo "<h3 style=\"margin-top:-10px;\">Necromancy</h3>";
		spell_table("necro");
		echo "<br/>"; 
		echo "<h3>Daemonology</h3>";
		spell_table("daem");
		echo "<br/>"; 
		echo "<h3>Theology</h3>";
		spell_table("theo");
		echo "</br>"; 
		echo "<h3>Elementalism</h3>";
		spell_table("ele");
		?>
	</div>

</div>

<div>
<p><small>This guide contains the current Occupational Skills available in the Lorien Trust LRP system. The copyright to the text used in this guide belongs to Lorien Trust.<br/> Many restricted skills can not be listed here. This guide should only be used as a reference, and for the sake of rules clarity you should always refer to the official guide published by the <a href="http://www.lorientrust.com">Lorien Trust</a>.</small></p>
</div>
</body>
</html>
