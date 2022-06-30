<%--
  User: Gurshobit Singh Brar
  Date: 2022-06-25
  Time: 4:40 PM
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><c:if test="${formMode == 'create'}">Add</c:if><c:if test="${formMode != 'create'}">Edit</c:if> Student</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
  </head>
  <body>
    <div class="container">
    	<div class="row">
    		<div class="col-12 text-center">
    			<h1>Rainbow College Festival</h1>
			</div>
    	</div>
    	<div class="row">
    		<div class="col">
				<a href="/CollegeFestival/students/list" class="btn btn btn-dark btn-sm mb-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevrons-left"><polyline points="11 17 6 12 11 7"></polyline><polyline points="18 17 13 12 18 7"></polyline></svg> All Students</a>
    			<h3><c:if test="${formMode == 'create'}">Add</c:if><c:if test="${formMode != 'create'}">Edit</c:if> Student</h3>
    		</div>
    		<div class="col-12"></div>
    		<div class="col-12">
    			<div class="row">
					<form action="/CollegeFestival/students/save" method="post">
						<input type="hidden" name="studentId" value="${singleStudent.id}">
						<div class="col-3">
							<label class="form-label">Student Name</label>
							<input type="text"  name="studentName" value="${singleStudent.name}" placeholder="Student Name" class="form-control mb-4 col-4">
						</div>
						<div class="col-3">
							<label class="form-label">Department</label>
							<input type="text"  name="departmentName" value="${singleStudent.department}" placeholder="Department" class="form-control mb-4 col-4">
						</div>
						<div class="col-3">
							<label class="form-label">Country</label>
							<input type="text"  name="countryName" value="${singleStudent.country}" placeholder="Country" class="form-control mb-4 col-4">
						</div>
						<button type="submit" class="btn btn-warning col-2">Submit</button>
					</form>
    			
    			</div>
    		</div>
    	</div>	
    
    </div>
  </body>
</html>