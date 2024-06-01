DROP TABLE IF EXISTS devtools.quiz CASCADE;
DROP TABLE IF EXISTS devtools.question CASCADE;
DROP TABLE IF EXISTS devtools.answer CASCADE;
DROP TABLE IF EXISTS devtools.user CASCADE;
DROP TABLE IF EXISTS devtools.user_result CASCADE;

CREATE TABLE devtools.quiz (
  quiz_id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE devtools.question (
  question_id SERIAL PRIMARY KEY,
  quiz_id INTEGER NOT NULL,
  question_text TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_quiz FOREIGN KEY (quiz_id) REFERENCES devtools.quiz (quiz_id) ON DELETE CASCADE
);

CREATE TABLE devtools.answer (
  answer_id SERIAL PRIMARY KEY,
  question_id INTEGER NOT NULL,
  answer_text TEXT NOT NULL,
  is_correct BOOLEAN NOT NULL,
  CONSTRAINT fk_question FOREIGN KEY (question_id) REFERENCES devtools.question (question_id) ON DELETE CASCADE
);

CREATE TABLE devtools.user (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL -- Assumed to be a hashed password
);

CREATE TABLE devtools.user_result (
  result_id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  quiz_id INTEGER NOT NULL,
  score INTEGER CHECK (score >= 0),
  date_completed DATE DEFAULT CURRENT_DATE,
  CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES devtools.user (user_id) ON DELETE CASCADE,
  CONSTRAINT fk_quiz_result FOREIGN KEY (quiz_id) REFERENCES devtools.quiz (quiz_id) ON DELETE CASCADE
);

-- Adding indexes for columns frequently used in WHERE clauses
--CREATE INDEX idx_question_quiz_id ON devtools.question (quiz_id);
--CREATE INDEX idx_answer_question_id ON devtools.answer (question_id);
--CREATE INDEX idx_user_result_user_id ON devtools.user_result (user_id);
--CREATE INDEX idx_user_result_quiz_id ON devtools.user_result (quiz_id);
