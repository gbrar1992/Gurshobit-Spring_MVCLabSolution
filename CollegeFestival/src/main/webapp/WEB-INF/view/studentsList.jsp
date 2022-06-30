<%--
  User: Gurshobit Singh Brar
  Date: 2022-06-25
  Time: 4:38 PM
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Students List</title>
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
				<a href="/CollegeFestival/students/add" class="btn btn-dark btn-sm mb-2">Add Student</a>
 				<h3>Students</h3>
    		</div>
    		<div class="col-12">
    			<table class="table table-bordered table-striped">
					<thead  class="thead-dark">
						<tr>
							<th>Student ID</th>
							<th>Name</th>
							<th>Department</th>
							<th>Country</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${allStudents.size() > 0}">
							<c:forEach items="${allStudents}" var="student">
								<tr>
									<td><c:out value="${student.id}"></c:out></td>
									<td><c:out value="${student.name}"></c:out></td>
									<td><c:out value="${student.department}"></c:out></td>
									<td><c:out value="${student.country}"></c:out></td>
									<td>
										<a href="/CollegeFestival/students/update?id=${student.id}" class="btn btn-warning btn-sm">Update</a>
										<a href="/CollegeFestival/students/delete?id=${student.id}" class="btn btn-danger btn-sm" onclick="if(!(confirm('Are you sure to delete this student?'))) return false">Delete</a>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${allStudents.size() <= 0}">
							<tr>
								<td class="text-center" colspan="5">No Students</td>
							</tr>
						</c:if>
					</tbody>
				</table>
    		</div>
    	</div>	
    
    </div>
  </body>
</html>