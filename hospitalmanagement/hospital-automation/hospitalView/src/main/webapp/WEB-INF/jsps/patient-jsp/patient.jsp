<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<html lang="en">
<head>
  <meta charset="utf-8">
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  <script>
  $(function(){
$( "#datepicker" ).datepicker();
//Pass the user selected date format
$( "#format" ).change(function() {
$( "#datepicker" ).datepicker( "option", "dateFormat", $(this).val() );
});
});
  </script>
</head>
<body>
 
<form action="">
<table>
	<tr>
		<td><label>Date:</label></td>
		<td><input type="text" id="datepicker"></td>
	</tr>
	<tr>
		<td><label>Clinic:</label></td>
		<td> 
			<select name="clinic">
			  <option >Dental clinic</option>
			  <option >Child clinic</option>
			</select>
		</td>
	</tr>
	<tr>
		<td><label>Doctor:</label></td>
		<td> 
			<select name="doctor">
			  <option >Ramazan Karagoz</option>
			  <option >Semra Ozge Durmuş</option>
			</select>
		</td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="Search appointment"></td>
	</tr>
</table>
 </form>
 
</body>
</html>