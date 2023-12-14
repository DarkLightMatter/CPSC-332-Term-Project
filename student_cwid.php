<html>
    <body>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Collect user input
            $userInput = $_POST["cwid"];

            // Database connection
            $link = mysqli_connect('mariadb', 'cs332g6', 'wyYk7VnK', 'cs332g6');
            if (!$link) {
                die('Could not connect: ' . mysqli_connect_error());
            }

            // Construct and execute the SQL query with a WHERE clause
            $query = "SELECT cnum, snum, grade FROM Enrollment WHERE cwid = '$userInput'";
            $result = $link->query($query);

            // Display results
            if ($result) {
                $nor = $result->num_rows;

                for ($i = 0; $i < $nor; $i++) {
                    $row = $result->fetch_assoc();
                    echo "cnum: ", $row["cnum"], "<br>";
                    echo "snum: ", $row["snum"], "<br>";
                    echo "grade: ", $row["grade"], "<br>";
                }

                $result->free_result();
            } else {
                echo "Error executing query: " . $link->error;
            }

            // Close the database connection
            $link->close();
        }
        ?>
    </body>
</html>