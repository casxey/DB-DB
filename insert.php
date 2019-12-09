<?
require 'Db.php';


$sq= htmlspecialchars($_POST['insert']); 
echo $sq;


global $db;
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$sql = "INSERT INTO investors values('Null','$sq')";
$stmt = $db->prepare($sql);
$stmt->execute();

