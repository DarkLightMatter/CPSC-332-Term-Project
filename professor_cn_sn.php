<html>
    <body>
        <p>Your requested Course Number and Section Number: <?php echo $_GET["cnum"]; ?>, <?php echo $_GET["snum"]; ?></p>
        <?php
            $link = mysqli_connect('mariadb', 'cs332g6', 'wyYk7VnK', 'cs332g6');
            if (!$link) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                    exit();
            }
            echo 'Connected successfully<p>';
            
            $query = ""
        ?>
    </body>