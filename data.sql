CREATE DATABASE task;
USE task;
CREATE TABLE tasks (
  id INT PRIMARY KEY AUTO_INCREMENT,
  description VARCHAR(200) ,
  due_date DATE ,
  employee VARCHAR(100) ,
finished_date DATE 
);
INSERT INTO tasks
(id, description, due_date,employee,finished_date)
VALUES
(1, 'create ER-diagram', '20.05.2020', 'Alex', '19.05.2020'),
(2, 'connect node.js to mysql', '13.05.2020', 'John', '17.05.2020'),
(3, 'create get-request handler /task', NULL, 'Alex', '15.04.2020'),
(4, 'create post-request handler /task', '5.04.2020', 'Donald', NULL),
(5, 'create sql-query for get tasks', NULL, 'John', NULL),
(6, 'create sql-query for add task', '4.03.2020', 'Martin', '4.03.2020'),
(7, 'configure server to auto deploy', '12.03.2020', NULL, NULL);
SELECT * FROM tasks