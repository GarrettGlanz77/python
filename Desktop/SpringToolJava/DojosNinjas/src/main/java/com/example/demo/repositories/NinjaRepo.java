package com.example.demo.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.models.Ninja;


@Repository

public interface NinjaRepo extends CrudRepository<Ninja, Long>{

}
