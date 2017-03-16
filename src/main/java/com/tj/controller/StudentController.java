package com.tj.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.tj.entity.Student;

@RestController
public class StudentController {
	
	public StudentController()
	{
		System.out.println("controller init....");
	}
	@RequestMapping(value="/student/{id}",method=RequestMethod.GET,produces=MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<Student> findStudent(@PathVariable("id") int id)
	{
		System.out.println("searching the student...");
		return new ResponseEntity<Student>(HttpStatus.NOT_FOUND);
	}

}
