
-- Ajouter le thème du quiz Java
INSERT INTO devtools.quiz (title, description) VALUES ('Thème Java', 'Quiz sur le langage Java');

    -- Ajouter les questions et les réponses
    INSERT INTO devtools.question (quiz_id, question_text) VALUES (1,'Que faut-il écrire pour que la classe A hérite de la classe B ?');
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (1,'class A extends B', TRUE);
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (1,'class A : B', FALSE);
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (1,'class A inherits B', FALSE);
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (1,'class A implements B', FALSE);

    INSERT INTO devtools.question (quiz_id, question_text) VALUES (1, 'Dans une classe, un attribut "static" possède la même valeur pour toutes les instances de la classe');
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (2,'Vrai', TRUE);
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (2,'Faux', FALSE);

    INSERT INTO devtools.question (quiz_id, question_text) VALUES (1, 'Dans une classe, un attribut déclaré sans préciser son niveau de visibilité est visible uniquement dans cette classe');
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (3,'Vrai', TRUE);
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (3,'Faux', FALSE);

    INSERT INTO devtools.question (quiz_id, question_text) VALUES (1, 'Le point d’entrée dans un programme Java est une méthode dont la signature est public static void main (String[] args)');
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (4,'Vrai', TRUE);
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (4,'Faux', FALSE);

    INSERT INTO devtools.question (quiz_id, question_text) VALUES (1, 'Que peut contenir une interface ?');
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (5,'Des signatures de méthodes et des méthodes default et static', TRUE);
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (5,'Héritage simple de classes', FALSE);
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (5,'Héritage multiple de classes', FALSE);
    INSERT INTO devtools.answer ( question_id, answer_text, is_correct) VALUES (5,'Java ne supporte pas l’héritage', FALSE);