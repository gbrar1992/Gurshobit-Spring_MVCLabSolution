
package com.gurshobit.collegefestival.services;

import java.util.List;

import com.gurshobit.collegefestival.models.Student;

public interface StudentService {
    public List<Student> getAllStudents();
    public void save(Student student);
    public Student delete(int id);
    public Student getStudentById(int id);
}
