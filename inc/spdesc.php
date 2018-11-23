<?php 

/*********************************************

Spell List Guide for the Lorien Trust LRP System

Development by Jonathan Kane on behalf of the Tarantula Faction
Enquiries to jon.kane@msdl.net

*********************************************/


class OSdb extends SQLite3{
	function __construct(){
		$this->open('spelllist.sqlite');
	}
}

$db = new OSdb();
if (!$db) {echo "Database Error";}

$list = $db->query("SELECT * FROM spell WHERE id='" . $_GET['id'] . "' ");
$row=$list->fetchArray(SQLITE3_ASSOC);
?>

<head><title><?php echo $row['name'] ?> </title></head><body>
<div style="position:static; float:right; padding:15px; margin-left:15px; margin-bottom:15px; border:1px solid black; border-radius:10px; box-shadow: 5px 5px 15px 5px #888888; font-size:x-small;">

<?php 
$type = explode(",",$row['type']);
foreach ($type as $val) {
	if ($val == "mss"){ $val = "Range: Mass"; }
	if ($val == "rng"){ $val = "Range: Ranged"; }
	if ($val == "tch"){ $val = "Range: Touch"; }
	if ($val == "slf"){ $val = "Range: Self"; }
	if ($val == "rit"){ $val = "Range: Rite"; }
	if ($val == "mag"){ $val = "Class: Magical"; }
	if ($val == "mnd"){ $val = "Class: Mind"; }
	if ($val == "pat"){ $val = "Class: Pattern"; }
	if ($val == "phy"){ $val = "Class: Physical"; }
	if ($val == "cmd"){ $val = "Characteristic: Command"; }
	if ($val == "ctr"){ $val = "Characteristic: Counter"; }
	if ($val == "cur"){ $val = "Characteristic: Cure"; }
	if ($val == "dam"){ $val = "Characteristic: Damage"; }
	if ($val == "det"){ $val = "Characteristic: Detect"; }
	if ($val == "enc"){ $val = "Characteristic: Enchant"; }
	if ($val == "for"){ $val = "Characteristic: Force"; }
	if ($val == "imb"){ $val = "Characteristic: Immobilise"; }
	if ($val == "spc"){ $val = "Characteristic: Special"; }
	if ($val == "ins"){ $val = "Duration: Instant"; }
	if ($val == "10s"){ $val = "Duration: 10 Seconds"; }
	if ($val == "1m"){ $val = "Duration: 1 Minute"; }
	if ($val == "10m"){ $val = "Duration: 10 Minutes"; }
	if ($val == "cht"){ $val = "Duration: Chant"; }
	if ($val == "dwn"){ $val = "Duration: Dawn"; }
	if ($val == "var"){ $val = "Duration: Variable"; }
	echo $val . "<br>";
}

 ?>
</div>
<?php
if ( $row['level'] == "3" ) { echo "<span style=\"color:red;font-size:x-small;\">High Magic</span>"; }
echo "<h3 style=\"margin-top:0px;\">" . $row['name'] ."</h3>";
echo "<div style=\"margin-top:0px; font-size:small; font-weight:bold;\">" . $row['cast'] . "</div><br/>";
echo "<div style=\"text-align:justify;font-size:small;\">" .$row['desc'] . "</div>";
?></div>

