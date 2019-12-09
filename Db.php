<? 
    $dbhost="localhost";
    $dbname="test";
    $username="root";
    $password="";
    $db= new PDO("mysql:host=$dbhost; dbname=$dbname",$username,$password);


    function get__teams(){
    global $db;
     $name_comp= $db->query("SELECT teams.name_teams,teams.info,organisation.name_organis,investors.name_invest,disciplines.name_disciplines
     FROM teams
     INNER JOIN organisation on teams.id_organis=organisation.id_organis
     INNER JOIN investors on organisation.id_invest=investors.id_invest
     INNER JOIN disciplines on teams.id_disciplines=disciplines.id_disciplines
     ");
    return $name_comp;
    }


    function get_result(){
        global $db;
        $name_result= $db->query("SELECT * FROM result");
        return $name_result;
    }

    function get_invest(){
        global $db;
        $name_result= $db->query("SELECT * FROM investors");
        return $name_result;
    }

?>  