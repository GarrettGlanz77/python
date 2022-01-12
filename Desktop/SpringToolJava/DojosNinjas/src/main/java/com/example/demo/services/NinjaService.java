package com.example.demo.services;

import org.springframework.stereotype.Service;

import com.example.demo.models.Ninja;
import com.example.demo.repositories.NinjaRepo;



@Service
public class NinjaService {
	
	private final NinjaRepo ninjaRepo;
	public NinjaService(NinjaRepo ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
	
	
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepo.save(ninja);
	}
}
