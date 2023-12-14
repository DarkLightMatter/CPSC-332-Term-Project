<html>
    <body>
        <?php
            $link = mysqli_connect('mariadb', 'cs332g6', 'wyYk7VnK', 'cs332g6');
            if (!$link) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                exit();
            }
            echo 'Connected successfully<p>';
            // Given the social security number of a professor, list the titles, classrooms, meeting days and time of h>
            $req = $_POST["ssn"];
            $query = "SELECT C.title, S.classroom, S.meeting_days, S.beginning_time, S.ending_time
                      FROM Course C, Section S, Professor P
                      WHERE P.ssn ='$req' AND S.prof_ssn = P.ssn AND S.cnum = C.cnum;";
            $result = $link->query($query);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    printf("Course Title: %s<br>\n", $row["title"]);
                    printf("Classroom: %s<br>\n", $row["classroom"]);
                    printf("Meeting Days: %s<br>\n", $row["meeting_days"]);
                    printf("Beginning Time: %s<br>\n", $row["beginning_time"]);
                    printf("Ending Time: %s<br>\n", $row["ending_time"]);
                }
            }
            else {
                echo "No results found";
            }
            $result->free_result();
            $link->close();
        ?>
    </body>
</html>