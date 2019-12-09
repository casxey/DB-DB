<?
require 'Db.php';

$rest = substr($_POST['data'][0], 1);
echo $rest;

echo '<br>';
$sq= htmlspecialchars($_POST['in']); 
echo $sq;


global $db;
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$sql = "UPDATE teams SET name_teams='$sq' WHERE name_teams='$rest' ";
$stmt = $db->prepare($sql);
$stmt->execute();

