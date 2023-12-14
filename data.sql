CREATE TABLE Professors (
    ssn varchar(10) NOT NULL,
    name varchar(100) DEFAULT NULL,
    title varchar(50) DEFAULT NULL,
    sex varchar(1) DEFAULT NULL,
    salary varchar(255) DEFAULT NULL,
    zip varchar(10) DEFAULT NULL,
    str_address varchar(95) DEFAULT NULL,
    city varchar(35) DEFAULT NULL
    state varchar(25) DEFAULT NULL,
    area_code varchar(5) DEFAULT NULL,
    seven_digit_num varchar(8) DEFAULT NULL,
    PRIMARY KEY (ssn)
);

INSERT INTO Professors VALUES 
('114883546', 'Kayla Robertson', 'Department Chair', 'F', '$205,000', '21784', '7 Ann Road', 'Garden City','CA','985','6372877'),
('287869954', 'Misty Chambers', 'Professor', 'F', '$118,000', '39532', '9447 King Street', 'Parlin','CA','595','2707170'),
('388503460', 'Kirk Foster', 'Professor', 'M', '$117,699', '45140', '74 Cactus Lane', 'Hastings','CA','714','7437607'),
('844179272', 'Victor Richards', 'Department Chair', 'M', '$200,000', '26508', '1 East Plumb Branch Drive', 'Jonesboro','CA','884','4937220');

CREATE TABLE Course (
    cnum int(11) NOT NULL,
    textbook varchar(255) DEFAULT NULL,
    units float DEFAULT NULL,
    title varchar(255) DEFAULT NULL,
    dnum int(11) DEFAULT NULL,
    prereq_cnum int(11) DEFAULT NULL,
    PRIMARY KEY (cnum)
);

INSERT INTO Course VALUES 
('250', 'Calculus, Early Transcendental Functions, Third Edition', '4', 'Calculus III', '22', '150'),
('332', 'Fundamentals of Database Systems Seventh Edition', '3', 'File Structure & Database', '21', '131'),
('338', 'Statistics for the Behavioral Sciences', '4', 'Statistics Applied to Natural Science', '22', '130'),
('483', 'Hands-On Machine Learning with Scikit-Learn and TensorFlow', '3', 'Introduction to Machine Learning', '21', '335');

CREATE TABLE Department (
    dnum int(11) NOT NULL,
    office_location varchar(255) DEFAULT NULL,
    dname varchar(255) DEFAULT NULL,
    dtelephone varchar(20) DEFAULT NULL,
    chair_ssn varchar(10) DEFAULT NULL,
    PRIMARY KEY (dnum)
);

INSERT INTO Department VALUES 
('21', 'Computer Science Building, CS-522', 'Computer Science', '6572783700', '844179272'),
('22', 'McCarthy Hall, MH-154', 'Mathematics', '6572783631', '114883546');

CREATE TABLE Enrollment (
    cwid varchar(10) NOT NULL,
    cnum int(11) NOT NULL,
    snum int(11) NOT NULL,
    grade varchar(3) DEFAULT NULL,
  PRIMARY KEY (cwid, cnum, snum)
);

INSERT INTO Enrollment VALUES 
('194326000', '250', '1', 'B'),
('194326000', '338', '25', 'A-'),
('202312688', '250', '2', 'C'),
('202312688', '338', '25', 'B+'),
('574752626', '332', '4', 'A'),
('574752626', '483', '3', 'B-'),
('584400000', '250', '1', 'C+'),
('584400000', '338', '25', 'C-'),
('608033000', '332', '8', 'A'),
('608033000', '483', '3', 'A'),
('675740000', '250', '2', 'D'),
('675740000', '338', '25', 'B-'),
('736481000', '332', '4', 'F'),
('736481000', '483', '3', 'C'),
('738732000', '332', '8', 'D+'),
('738732000', '483', '3', 'B+'),
('866462000', '332', '4', 'B'),
('866462000', '483', '3', 'C+'),
('923912137', '332', '8', 'A-'),
('923912137', '483', '3', 'A');

CREATE TABLE Sections (
    cnum int(11) NOT NULL,
    snum int(11) NOT NULL,
    classroom varchar(255) DEFAULT NULL,
    num_of_seats int(11) DEFAULT NULL,
    meeting_days varchar(255) DEFAULT NULL,
    beginning_time varchar(10) DEFAULT NULL,
    ending_time varchar(10) DEFAULT NULL,
    prof_ssn varchar(10) DEFAULT NULL,
    PRIMARY KEY (cnum, snum)
);

INSERT INTO Sections VALUES 
('250', '1', 'MH 442 - Lecture Room', '35', 'Monday Wednesday', '8:00AM', '9:50AM', '114883546'),
('250', '2', 'MH 440 - Lecture Room', '30', 'Monday Wednesday', '10:00AM', '11:50AM', '287869954'),
('332', '4', 'CS 408 - Teaching Lab', '40', 'Monday Wednesday', '10:00AM', '11:15AM', '844179272'),
('332', '8', 'CS 129 - Lecture Room', '35', 'Tuesday Thursday', '1:00PM', '2:15PM', '388503460'),
('338', '25', 'MH 487 - Lecture Room', '26', 'Tuesday Thursday', '3:30PM', '4:45PM', '287869954'),
('483', '3', 'RGC 019 - Lecture Room', '34', 'Wednesday', '7:00PM', '9:45PM', '388503460');

CREATE TABLE Students (
    cwid varchar(10) NOT NULL,
    address varchar(95) DEFAULT NULL,
    telephone varchar(20) DEFAULT NULL,
    fname varchar(46) DEFAULT NULL,
    lname varchar(46) DEFAULT NULL,
    dnum int(11) DEFAULT NULL,
    PRIMARY KEY (cwid)
)
INSERT INTO Students VALUES 
('194326000', '274 North Hillcrest Lane, Canfield, CA 44406', '2823160000', 'Cesar', 'Burns', '22'),
('202312688', '5 Prairie Court, Pearl, CA 39208', '4946091125', 'Elizabeth', 'Wolfe', '22'),
('574752626', '332 East Elm Drive, Quincy, CA 02169', '2797895251', 'Luther', 'Briggs', '21'),
('584400000', '9097 Campfire Avenue, Youngstown, CA 44512', '3855630000', 'Janis', 'Simpson', '22'),
('608033000', '7222 Jones Avenue, Barrington, CA 60010', '7538840000', 'Terri', 'Baker', '21'),
('675740000', '9448 Sierra Lane, Sumter, CA 14075', '4728440000', 'Luz', 'Martin', '22'),
('736481000', '9981 Canterbury Circle, Stafford, CA 22554', '8099100000', 'Charlie', 'Barrett', '21'),
('738732000', '924 Second Lane, Mobile, CA 36605', '9738550000', 'Erin', 'Parks', '21'),
('866462000', '895 Mayfair Drive, Woburn, CA 01801', '9843080000', 'Cary', 'Lamb', '21'),
('923912137', '843 Glen Creek Road, Madisonville, CA 42431', '5387275363', 'Teresa', 'Goodwin', '21');