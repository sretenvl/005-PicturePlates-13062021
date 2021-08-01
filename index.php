<?php
    session_start();
    include "config/connection.php";
    include "views/head.php";
?>
    <div id = "omotac">

<?php
    if(isset($_SESSION['USERAKT'])){
        $provera = $_SESSION['USERAKT'];
            switch ($provera){
                case 1:
                    include "views/adminPan.php";
                    break;           
                default:
                    include "views/navigation.php";
                    include "views/log.php";
                    include "views/register.php";
                    include "views/main.php";
                    include "views/autor.php";
                    include "views/footer.php";
                    break;
            }
    }
    else{
        include "views/navigation.php";
        include "views/log.php";
        include "views/register.php";
        include "views/main.php";
        include "views/autor.php";
        include "views/footer.php";
    }
?>
</div>
</body>
</html>


