<?
require 'Db.php';

$rest = substr($_POST['delete'][0], 1);
echo $rest;

var_dump($rest);

global $db;
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$sql = "DELETE FROM result WHERE name_res='$rest'";
$stmt = $db->prepare($sql);
$stmt->execute();


