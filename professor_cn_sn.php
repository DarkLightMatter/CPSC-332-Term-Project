<html>
    <body>
        <?php
            $link = mysqli_connect('mariadb', 'cs332g6', 'wyYk7VnK', 'cs332g6');
            if (!$link) {
                echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
                exit();
            }
            // Given a course number and a section number, count how many students get each distinct grade, i.e. ‘A’, ‘A-’, ‘B+’, ‘B’, ‘B-’, etc.
            $course = $_POST["cnum"];
            $section = $_POST["snum"];

            $query = "SELECT E.grade, COUNT(*) AS no_of_students
                      FROM Course C, Sections S, Enrollment E
                      WHERE E.cnum = '$course'
                        AND E.snum = '$section'
                        AND S.cnum = C.cnum
                        AND S.snum = E.snum
                        AND E.cnum = C.cnum
                        GROUP BY E.grade;";
            $result = $link->query($query);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    printf("Grade: %s<br>\n", $row["grade"]);
                    printf("Number of Students: %s<br>\n", $row["no_of_students"]);
                    printf("<br>");
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