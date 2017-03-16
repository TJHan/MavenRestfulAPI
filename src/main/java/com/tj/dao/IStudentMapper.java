package com.tj.dao;

import com.tj.entity.Student;

public interface IStudentMapper {
	void Insert(Student student);
	void Update(Student student);
	Student FindById(int id);
	void Delete(int id);
}
