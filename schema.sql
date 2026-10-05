CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, email TEXT);
CREATE TABLE courses (id INTEGER PRIMARY KEY, title TEXT, price REAL);
CREATE TABLE lessons (id INTEGER PRIMARY KEY, course_id INTEGER,
    title TEXT, position INTEGER);
CREATE TABLE enrollments (student_id INTEGER, course_id INTEGER, date DATE);
CREATE TABLE progress (student_id INTEGER, lesson_id INTEGER,
    completed INTEGER, finished DATE);
