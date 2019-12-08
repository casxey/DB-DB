<?php
require 'Db.php';
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="css/style.css" />
    <link
      href="https://fonts.googleapis.com/css?family=Concert+One|Saira+Stencil+One&display=swap"
      rel="stylesheet"
    />
    <title>Document</title>
  </head>
  <body>
    <header class="header">
      <div class="container">
        <h1>Cybersport </h1>
        <div class="navi">
          <ul class="navi__ul">
            <li><a href="#">About</a></li>
            <li><a href="map.php">Map</a></li>
          </ul>
        </div>
      </div>
    </header>

    <div class="banner">
      <div class="photo">
        <a href="#history">
          <img src="photo.jpg" alt="" />
        </a>
      </div>
    </div>

    <div class="main">
      <div class="container">
        <div class="news">
          <h3>Последние новости:</h3>
          <div class="anchor">
            <ul class="ul">
              <li><a href="#">Информация про команду </a></li>
              <li><a href="#">Инфориация про игрока </a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <div class="tab">
      <div class="container">
        <div class="tour">
          <table>
            <tr>
              <th><a href="123.html">The International 2019 &nbsp</a></th>
              <th><a href="#">ESL One Hamburg 2019 &nbsp</a></th>
              <th><a href="#">DreamLeague S12 &nbsp</a></th>
              <th><a href="#">The Summit S10 &nbsp</a></th>
              <th><a href="#">Dotapit Minor 2019 &nbsp</a></th>
              <th><a href="#">ESL One Mumbai 2019 &nbsp</a></th>
            </tr>
          </table>
        </div>
        <div class="history">
          <a id="history">
          <p>
              Киберспорт, также именуемый как компьютерный спорт или электронный
              спорт — командное или индивидуальное соревнование на основе
              видеоигр. В России признан видом спорта. Все киберспортивные
              дисциплины делятся на несколько основных классов, различаемых
              свойствами пространств, моделей, игровой задачей и развиваемыми
              игровыми навыками киберспортсменов: шутеры от первого лица,
              стратегии реального времени, авто- и авиа-симуляторы, командные
              ролевые игры с элементами тактико-стратегической игры и т. д.
              Разыгрываемые призовые фонды могутаа достигать нескольких
              миллионов долларов США. Турнир по Dota 2 «The International»
              несколько раз бил рекорды по выплатам: так в 2016 году было
              разыграно 20,77 млн долларов, в 2017 — 24,79, в 2018 - 25,53 Игры
              турниров транслиfруются в прямом эфире в интернете, собирая
              многомиллионную аудиторию. Например, за финалом The International
              2015, согласно данным с TrackDota.com, наблюдало более 4,6 млн
              зрителей. История киберспорта началась с игры Doom 2, которая
              имела режим сетевой игры через локальную вычислительную сеть.
              Благодаря популярности игры Quake, в 1997 году в США появилась
              первая лига киберспортсменов — Cyberathlete Professional League.
            </p>
            <div class="Teams">
              <h2>
                Киберспортивные команды
              </h2>
              <?$teams=get__teams();
              foreach($teams as $teams):
              ?>

            <p class="teams__p">
                <p>Дисциплина команд -  <?echo ("<b>".$teams["name_disciplines"]."</b>");?></p>
                <?echo ("<b>".$teams["name_teams"]."</b>"); echo $teams["info"]; ?>

            <p>Организация команды - <?echo ("<b>".$teams["name_organis"]."</b>");?></p>
            <p>
                Наши инвесторы - <?echo ("<b>".$teams["name_invest"]."</b>");?>
            </p>
            </p> 

              <?php endforeach;
                            ?>
              </div>
