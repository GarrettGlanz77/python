package com.example.demo.services;

import java.util.List;
import java.util.Optional;
import com.example.demo.models.Dojo;
import com.example.demo.repositories.DojoRepo;
import org.springframework.stereotype.Service;



@Service
public class DojoService {
	
	private final DojoRepo dojoRepo;

	public DojoService(DojoRepo dojoRepo) {
		this.dojoRepo = dojoRepo;
	}

	public List<Dojo> getAllDojos() {
		return (List<Dojo>) dojoRepo.findAll();
	}

	public Dojo createDojo(Dojo dojo) {
		return dojoRepo.save(dojo);
	}

	public Dojo findDojoById(Long id) {
		Optional<Dojo> findDojo = dojoRepo.findById(id);
		if (findDojo.isPresent()) {
			return findDojo.get();
		} else {
			return null;
		}
	}
}
