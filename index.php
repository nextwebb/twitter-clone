<?php

    include("functions.php");

    include("views/header.php");

 

 if (isset($_GET['page'])) {
 
    switch ($_GET['page']) {

    case "timeline":
        include("views/timeline.php");
        break;
    case "yourtweets":
        include("views/yourtweets.php");
        break;
    case "search":
        include("views/search.php");
        break;
    case "publicprofiles":
        include("views/publicprofiles.php");
        break; 
    default:
        include("views/404.php");//prevent open direct url parsing
    }
} else {
    include("views/home.php");//if nothing is clicked atall show this
}
 include("views/footer.php");



?>

