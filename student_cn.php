<html>
    <body>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Collect user input
            $userInput = $_POST["stu_cnum"];

            // Database connection
            $link = mysqli_connect('mariadb', 'cs332g6', 'wyYk7VnK', 'cs332g6');
            if (!$link) {
                die('Could not connect: ' . mysqli_connect_error());
            }

            // Construct and execute the SQL query 
            $query = "SELECT Sections.snum, classroom, meeting_days, beginning_time, ending_time, COUNT(*) AS Num_of_students_enrolled 
                      FROM Sections, Enrollment 
                      WHERE Sections.snum = Enrollment.snum AND Sections.cnum = '$userInput' 
                      GROUP BY snum;";
            $result = $link->query($query);

            // Display results
            if ($result) {
                $nor = $result->num_rows;

                for ($i = 0; $i < $nor; $i++) {
                    $row = $result->fetch_assoc();
                    echo "Section Number: ", $row["snum"], "<br>";
                    echo "Classroom: ", $row["classroom"], "<br>";
                    echo "Meeting Days: ", $row["meeting_days"], "<br>";
                    echo "Beginning Time: ", $row["beginning_time"], "<br>";
                    echo "Ending Time: ", $row["ending_time"], "<br>";
                    echo "Number of Students Enrolled: ", $row["Num_of_students_enrolled"], "<br><br>";
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