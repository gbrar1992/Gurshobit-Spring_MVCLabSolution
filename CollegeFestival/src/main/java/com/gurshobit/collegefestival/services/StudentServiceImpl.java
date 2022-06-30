package com.gurshobit.collegefestival.services;

import java.util.List;

import org.hibernate.Transaction;
import javax.transaction.Transactional;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gurshobit.collegefestival.models.Student;

@Repository
public class StudentServiceImpl implements StudentService{
    SessionFactory sessionFactory;
    Session session;

    @Autowired
    public StudentServiceImpl(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
        try {
            this.session = sessionFactory.getCurrentSession();
        }catch(HibernateException he) {
            System.out.println("Exception" + he);
            this.session = sessionFactory.openSession();
        }
    }

    @Transactional
    public List<Student> getAllStudents() {
        Transaction transaction = session.beginTransaction();
        @SuppressWarnings("unchecked")
        List<Student> studentList = (List<Student>)session.createQuery("from Student").list();
        transaction.commit();
        return studentList;
    }

    @Transactional
    public void save(Student student) {
        Transaction transaction = session.beginTransaction();
        session.saveOrUpdate(student);
        transaction.commit();
    }

    @Transactional
    public Student delete(int id) {
    	Transaction transaction = session.beginTransaction();
        Student student = session.get(Student.class, id);
        session.delete(student);
		transaction.commit();
		return student;
        
    }

    @Transactional
    public Student getStudentById(int id) {
    	Transaction transaction = session.beginTransaction();
    	Student student = session.get(Student.class, id);
    	transaction.commit();
		return student;
    }
}
