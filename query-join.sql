/* 1) Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */
SELECT `students`.`name` AS `Nome`, `students`.`surname` AS `Cognome`, `degrees`.`name` AS "Corso di Laurea"
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

/* 2) Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze */
SELECT `degrees`.`name` AS `Corso di Laurea`, `degrees`.`level` AS `Livello`, `departments`.`name` AS `Nome Dipartimento`
FROM `degrees`
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `degrees`.`level` = "magistrale"
AND `departments`.`id` = 7;

/* 3) Selezionare tutti i corsi in cui insegna Fulvio Amato (id = 44) */
SELECT `teachers`.`name` AS `Nome Professore`, `teachers`.`surname` AS `Cognome Professore`, `courses`.`name` AS `Nome Corso`
FROM `course_teacher`
INNER JOIN `courses`
ON `courses`.`id` = `course_teacher`.`teacher_id`
INNER JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`course_id`
WHERE `teachers`.`id` = 44;
/* un solo risultato */

/* 4) Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome */
SELECT `students`.`surname` AS `Cognome Studente`, `students`.`name` AS `Nome Studente`, `degrees`.`name` AS `Corso di Laurea`, `departments`.`name` AS `Nome Dipartimento`
FROM `students`
INNER JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
INNER JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname`, `students`.`name`;

/* 5) Selezionare tutti i corsi di laurea con i relativi corsi ed insegnanti */
SELECT `degrees`.`name` AS `Corso di Laurea`, `courses`.`name` AS `Insegnamento`, `teachers`.`surname` AS `Cognome Professore`, `teachers`.`name` AS `Nome Professore`
FROM `degrees`
INNER JOIN `courses`
ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
INNER JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
/* non funziona */