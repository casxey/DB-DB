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
        <form class="form" method="post" action="update.php">
            <p>
            <label for="name" class="col-sm-2 control-label">Выберите команду</label>
            </p>
     
            <select size="5" name="data[]">
                
                <?$teams=get__teams();
                
                foreach($teams as $teams):
                ?>

                <option id="" value=" <?echo $teams["name_teams"] ?>" > 
                    <?echo $teams["name_teams"] ?>
                </option>
     
                <?php endforeach;
                ?>
            </select></p>

            <input type="text" name="in">
            </p>
            <input class="btn" type="submit" value="Изменить"></p>
           
        </form>
    </div>

    <div class="form">
        <form class="form" method="post" action="delete.php">
            <p>
            <label for="name" class="col-sm-2 control-label">Выберите команду</label>
            </p>
     
            <select size="3" name="delete[]">
                
                <?$result=get_result();
                
                foreach($result as $result):
                ?>

                <option id="" value=" <?echo $result["name_res"] ?>" > 
                    <?echo $result["name_res"] ?>
                </option>
     
                <?php endforeach;
                ?>
            </select></p>
            <input class="btn" type="submit" value="Удалить"></p>
           
        </form>
    </div>

    <div class="form">
        <form class="form" method="post" action="insert.php">
            <p>
            <p><label  class="col-sm-2 control-label">Организация</label></p>
            <select size="3" >
                
            <?$teams=get_invest();
                
                foreach($teams as $teams):
                ?>

                <option id="" value=" <?echo $teams["name_invest"] ?>" > 
                    <?echo $teams["name_invest"] ?>
                </option>
     
                <?php endforeach;
                ?>
            </select>
            <p><input type="text" name="insert"></p>
            <input class="btn" type="submit" value="Insert"></p>
           
        </form>
    </div>


</body>
</html>