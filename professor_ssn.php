<html>
    <body>
        <p> Your request SSN is: <?php echo $_GET["ssn"]; ?> </p>
        <?php
            echo 'hi';
            $link = mysqli_connect('mariadb', 'cs332g6', 'wyYk7VnK', 'cs332g6');
            if (!$link) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                    exit();
            }
            echo 'Connected successfully<p>';
            // Given the social security number of a professor, list the titles, classrooms, meeting days and time of his/her classes

        ?>
    </body>
</html>