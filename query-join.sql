/* Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia */
SELECT `students`.`name`, `students`.`surname`, `degrees`.`name` AS "Corso di Laurea"
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia";

/* Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze */
