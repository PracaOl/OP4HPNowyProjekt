<?php
require_once('./../src/config.php');
use Steampixel\Route;

Route::add('/', function() {
    echo "Strona główna";
});
Route::run('/OP4HPNowyProjekt/pub');

?>