<?php
require 'Db.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <div class="form">
            <form action="db.php"  method="post">
                    <p><select size="5">
                    
                     <option disabled>Изменить команду</option>
                     <?$teams=get__teams();
                    foreach($teams as $teams):
                    ?>

                     <option id="data[]" value=" <?echo $teams["name_teams"] ?>" > 
                         <?echo $teams["name_teams"] ?>
                     </option>

                     <?php endforeach;
                     ?>
                    </select></p>
                    <input type="text"></p>
                    <p><input class="btn" type="submit" value="Отправить"></p>
                   </form>
    </div>
</body>
</html>