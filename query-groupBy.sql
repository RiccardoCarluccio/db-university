/* 1) Contare quanti iscritti ci sono stati ogni anno */
SELECT COUNT(`id`), YEAR(`enrolment_date`)
FROM `students`
GROUP BY YEAR(`enrolment_date`);

/* 2) Contare gli insegnanti che hanno l'ufficio nello stesso edificio */
SELECT COUNT(`id`), `office_address`
FROM `teachers`
GROUP BY `office_address`;

/* 3) Calcolare la media dei voti di ogni appello d'esame */