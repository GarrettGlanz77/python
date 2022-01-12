package com.example.demo.services;



import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.example.demo.models.Tag;
import com.example.demo.repositories.TagRepo;


@Service
public class TagService {
	private final TagRepo tagRepo;
	
	public TagService(TagRepo tagRepo) {
		this.tagRepo = tagRepo;
	}
	
	public ArrayList<Tag> findAllTags() {
		return (ArrayList<Tag>) tagRepo.findAll();
	}

	public Tag createTag(String tag) {
//		return tagRepo.save(tag);
		return tagRepo.save(new Tag(tag));
		
	}
}