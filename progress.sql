-- Процент прохождения курса
SELECT s.name, c.title,
  ROUND(100.0 * SUM(CASE WHEN p.completed=1 THEN 1 ELSE 0 END) /
        COUNT(l.id), 1) AS pct
FROM students s
JOIN enrollments e ON s.id=e.student_id
JOIN courses c ON e.course_id=c.id
JOIN lessons l ON l.course_id=c.id
LEFT JOIN progress p ON p.lesson_id=l.id AND p.student_id=s.id
GROUP BY s.id, c.id;
