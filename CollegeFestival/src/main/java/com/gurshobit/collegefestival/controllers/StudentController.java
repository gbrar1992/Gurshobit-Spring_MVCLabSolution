package com.gurshobit.collegefestival.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gurshobit.collegefestival.models.Student;
import com.gurshobit.collegefestival.services.StudentService;

@Controller
@RequestMapping("/students")
public class StudentController {
	
    @Autowired
    StudentService studentService;
    
    @RequestMapping("/")
    public String studentIndex(Model studentModelView) {
    	return "studentIndex";
    }
    
    @RequestMapping("/list")
    public String getAllStudents(Model studentModelView) {
        List<Student> res = studentService.getAllStudents();
        studentModelView.addAttribute("allStudents", res);
        return "studentsList";
    }

    @RequestMapping("/add")
    public String addStudent(Model studentModelView) {
        Student student = new Student();
        studentModelView.addAttribute("singleStudent", student);
        studentModelView.addAttribute("formMode", "create");
        return "studentForm";
    }

    @RequestMapping("/update")
    public String updateStudent(@RequestParam("id") int id, Model studentModelView) {
        Student student = studentService.getStudentById(id);
        studentModelView.addAttribute("singleStudent", student);
        studentModelView.addAttribute("formMode", "update");
        return "studentForm";
    }

    @RequestMapping("/delete")
    public String deleteStudent(@RequestParam("id") int id) {
        Student student = studentService.delete(id);
        System.out.println("Deleted Student Id"+ student.getId());
        return "redirect:/students/list";
    }

    @PostMapping("/save")
    public String saveStduent(@RequestParam("studentId") int studentId, @RequestParam("studentName") String studentName,
                           @RequestParam("departmentName") String departmentName, @RequestParam("countryName") String countryName) {
        Student student;
        if(studentId != 0) {
            student = studentService.getStudentById(studentId);
        }else {
            student = new Student();
        }
        student.setName(studentName);
        student.setDepartment(departmentName);
        student.setCountry(countryName);
        studentService.save(student);
        return "redirect:/students/list";
    }
}
