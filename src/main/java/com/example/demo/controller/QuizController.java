package com.example.demo.controller;

import com.example.demo.model.Quiz;
import com.example.demo.service.QuizService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/quizzes")
public class QuizController {

    private QuizService quizService;

    public QuizController(QuizService quizService) {
        this.quizService = quizService;
    }

    @GetMapping
    public ResponseEntity<List<Quiz>> getQuizzes() {
        List<Quiz> quiz = null;
        try {
            quiz = this.quizService.getAllQuiz();
        } catch (Exception e) {
            return ResponseEntity.status(500).build(); // Erreur serveur interne
        }
        return ResponseEntity.ok(quiz);
    }

    @GetMapping("/quiz")
    public ResponseEntity<Quiz> getQuiz(@RequestParam(name = "id") int id) {
        Quiz quiz = null;
        try {
            quiz = this.quizService.getQuizById(id);
        } catch (Exception e) {
            ResponseEntity.status(500).build(); // Erreur serveur interne
        }
        return ResponseEntity.ok(quiz);
    }

}
