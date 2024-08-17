package com.example.demo.controller;

import com.example.demo.model.Question;
import com.example.demo.service.QuestionService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

import static org.springframework.data.jpa.domain.AbstractPersistable_.id;

@Controller
@RequestMapping("/questions")
public class QuestionController {

    private QuestionService questionService;

    public QuestionController(QuestionService questionService) {
        this.questionService = questionService;
    }

    @GetMapping
    public ResponseEntity<List<Question>> getAllQuestions() {
        List<Question> questions = null;
        try {
            questions = questionService.findAll();
        } catch (Exception e) {
            ResponseEntity.status(500).build(); // Erreur serveur interne
        }
        return ResponseEntity.ok(questions);
    }
    @GetMapping("/question")
      public ResponseEntity<Question> getQuestionById(@RequestParam(name = "id")int id) {
        Question question = null;
        try {
            question = questionService.findById(id);
        } catch (Exception e) {
            ResponseEntity.status(500).build(); // Erreur serveur interne
        }
        return ResponseEntity.ok(question);
    }

}
