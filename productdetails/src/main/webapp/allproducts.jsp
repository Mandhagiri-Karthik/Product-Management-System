<%@page import="com.sai.Productdao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All products</title>
    <link rel="stylesheet" href="productdetails.css">
    			<link rel="icon" href="./p.jpg" type="image/x-icon">
    			
    			<style>
				.hover-button {
				 
				  background-color:aqua;
				  
				 
				  transition: background-color 0.3s ease;
				  }
				.hover-button:hover {
				  background-color:skyblue;
				}				
			</style>
    
</head>
<body bgcolor="lightblue" >

<table border="2">
    <thead>
        <th>PRODUCT ID</th>
        <th>PRODUCT NAME</th>
        <th>PRODUCT PRICE</th>
        <th>PRODUCT MADE IN</th>
        <th>PRODUCT COMPANY</th>
        <th>PRODUCT MANUFACTURE DATE</th>
        <th>PRODUCT EXPIRY DATE</th>
        <th>PRODUCT IMAGE</th>
        <th>ACTIONS</th>
        
    </thead>
    <tbody>
        <c:forEach items="<%=new Productdao().allproducts() %>" var="inf">
            <tr>
                <td>${inf.productid}</td>
                <td>${inf.productName}</td>
                <td>${inf.productPrice}</td>
                <td>${inf.productmadein}</td>
                <td>${inf.productCompany}</td>
                <td>${inf.productmanufacturedate}</td>
                <td>${inf.productexpiredate}</td>
                <td><img src="data:image/jpeg;base64,${inf.base64ProductImage}" alt="Product Image" style="max-width: 200px; max-height: 200px;"></td>   			
   				<td> 
   				
   				
   				<form action="./Deleteproductservlet" >   
   				<input type="hidden" name="productid" value="${inf.productid}">
   				<button class="hover-button" onclick="submit">DELETE</button>   				
   				</form><br><br>
   				</form>
   					 				
   				<button class="hover-button" onclick="window.location.href='updateproduct.html'">UPDATE</button>  					  				
            </tr>
        </c:forEach>       
    </tbody>
</table>
<br>
<button class="hover-button" onclick="window.location.href='Producthome.html'">HOME</button>
<button class="hover-button" onclick="window.location.href='saveproduct.html'">ADD PRODUCT</button>

</body>
</html>
