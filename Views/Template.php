<?php
/**
 * Created by PhpStorm.
 * User: JAZMIN
 * Date: 10/05/2018
 * Time: 11:56 AM
 */

namespace Views;

new Template();
class Template
{
    public static function header()
    {
       /* echo "header y nav de mi proyecto";*/
       ?>
        <!DOCTYPE html>
        <html>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <meta charset="utf-8" />
            <title>Index</title>
            <link rel="stylesheet" href="<?php echo URL?>/public/css/normalize.css" />
            <link rel="stylesheet" href="<?php echo URL?>/public/css/materialize.min.css" />
            <link rel="stylesheet" href="<?php echo URL?>/Public/css/stilo.css" />
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
            <script type="text/javascript" src="<?php echo URL?>/public/js/jquery.js"></script>
            <script type="text/javascript" src="<?php echo URL?>/public/js/materialize.js"></script>

        </head>
        <body>
        <nav>
            <div class="nav-wrapper black" >
                <img class="responsive-img" src="<?php echo URL?>/public/img/bluebox.png" width="10%">
                <ul id="nav-mobile" class="right hide-on-med-and-down">


                    <li><a href="<?php echo URL?>inscripcion">inscripcion</a></li>
                    <li><a href="<?php echo URL?>precongreso">precongreso</a></li>
                    <li><a href="<?php echo URL?>congreso_m">congreso </a></li>
            </div>
        </nav>
        <main class="container">
        <?php
    }
    public static function footer()
    {
     
        ?>
        </main>
        <aside id="cont_modal"></aside>
            <footer class="page-footer black">
                <div class="container">
                    <nav>
                        <div class="nav-wrapper black" >
                            <form>
                                <div class="row">
                                    <div class="col l8 center">
                                        <ul id="nav-mobile" class="right hide-on-med-and-down black">
                                        </ul>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </nav>
                </div>
                <div class="footer-copyright">
                    <div class="container">
                        <div class="row">
                           <div class="col offset-l1">
                                © 2018 Copyright Text
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
            </html>
        <?php
    }
}