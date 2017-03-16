package com.tj.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.dao.IStudentMapper;
import com.tj.entity.Student;
import com.tj.service.IStudentService;

@Service("studentService")
public class StudentServiceImpl implements IStudentService {

	@Autowired
	private IStudentMapper studentMapper;
	
	@Override
	public void insert(Student student) {
		// TODO Auto-generated method stub
		studentMapper.Insert(student);
	}

	@Override
	public void update(Student student) {
		// TODO Auto-generated method stub
		studentMapper.Update(student);
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		studentMapper.Delete(id);
	}

	@Override
	public Student getStudentById(int id) {
		// TODO Auto-generated method stub
		return studentMapper.FindById(id);
	}

}
