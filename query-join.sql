/* Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */
SELECT `students`.`name` AS `Nome`, `students`.`surname` AS `Cognome`, `degrees`.`name` AS "Corso di Laurea"
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

/* Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze */
SELECT `degrees`.`name` AS `Corso di Laurea`, `degrees`.`level` AS `Livello`, `departments`.`name` AS `Nome Dipartimento`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `degrees`.`level` = "magistrale"
AND `departments`.`id` = 7;

/* Selezionare tutti i corsi in cui insegna Fulvio Amato (id = 44) */
SELECT `teachers`.`name` AS `Nome Professore`, `teachers`.`surname` AS `Cognome Professore`, `courses`.`name` AS `Nome Corso`
FROM `course_teacher`
INNER JOIN `courses`
ON `courses`.`id` = `course_teacher`.`teacher_id`
INNER JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`course_id`
WHERE `teachers`.`id` = 44;
