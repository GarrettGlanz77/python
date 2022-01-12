package com.example.demo.services;



import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.models.Answer;
import com.example.demo.repositories.AnswerRepo;


@Service
public class AnswerService {
	private final AnswerRepo answerRepo;
	public AnswerService(AnswerRepo answerRepo) {
		this.answerRepo = answerRepo;
	}
	public Answer createAns(Answer answer) {
		return answerRepo.save(answer);
	}
	public List<Answer> getAll() {
		return answerRepo.findAll();
	}

}

