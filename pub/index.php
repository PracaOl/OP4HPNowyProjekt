<?php
require_once('./../src/config.php');
use Steampixel\Route;

Route::add('', function() {
    //echo "Strona główna";
    global $twig;
    $postArray = Post::getPage();
    $twigData = array("postArray" => $postArray, "pageTitle" => "Strona Główna");
    $twig->display("index.html.twig", $twigData);
});

Route::add('/upload', function() {
    global $twig;
    $twigData = array("pageTitle" => "Wgraj mema");
    $twig->display("upload.html.twig", $twigData);
});

Route::add('/upload', function() {
    global $twig;
    if(isset($_POST['submit']))  {
        Post::upload($_FILES['uploadedFile']['tmp_name']);
    }
    header("Location: http://localhost/OP4HPNowyProjekt/pub");
}, 'post');
Route::run('/OP4HPNowyProjekt/pub');

?>