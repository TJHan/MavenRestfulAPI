package com.tj.service;

import com.tj.entity.Student;

public interface IStudentService {
	void insert(Student student);
	void update(Student student);
	void delete(int id);
	Student getStudentById(int id);

}
