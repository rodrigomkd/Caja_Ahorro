<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String user = "";
	String password = "";
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" type="text/css" href="css/demo.css">
    <link rel="stylesheet" type="text/css" href="form-kit/css/style.css">
    <link rel="stylesheet" type="text/css" href="form-kit/css/uniform.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script type="text/javascript" src="form-kit/js/jquery.tools.js"></script>
    <script type="text/javascript" src="form-kit/js/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="form-kit/js/main.js"></script>
<title>Insert title here</title>
</head>
<body class="wrapped">

<div class="TTWForm-container">

    <div class="TTWForm-wrapper wrapped">
<form action="" method="POST" name="formulario" id="formulario">

	<table>
		<tr>
			<td>
				<div id="field1-container" class="field f_100">
                <label for="field1">
                    Text Field
                </label>
                <input name="field1" id="field1" required="required" type="text">
            </div>
			</td>
			<td></td>
		</tr>
		<tr>
			<td><b>Usuario:</b></td>
			<td><input  name="username" type="text"  class="login-inp" value="<%=user%>"/></td>
		</tr>
		<tr>
			<td><b>Contrasena:</b></td>
			<td><input  name="username" type="password"  class="login-inp" value="<%=user%>"/></td>
		</tr>
		<tr>
			<td></td>
			<td>
				<div id="form-submit" class="field f_100 clearfix submit">
                <input value="Submit" type="submit">
            </div>
			</td>
		</tr>
	</table>
	</form>
	</div>
	</div>
</body>
</html>