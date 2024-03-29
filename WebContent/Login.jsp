<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.caja_ahorro.conexion.Conectar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
String usuario = request.getParameter("username");
String contrasenia = request.getParameter("contrasena");
if(usuario != null && contrasenia != null){
	Conectar con = new Conectar();
	int idsocio = con.isLogin(usuario, contrasenia);	
}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>lOGIN</title>
 <link href="form-kit/css/style.css" media="screen" rel="stylesheet" type="text/css"/>
    <link href="form-kit/css/uniform.css" media="screen" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>
    <script type="text/javascript" src="jform-kit/s/jquery.tools.js"></script>
    <script type="text/javascript" src="form-kit/js/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="form-kit/js/main.js"></script>
</head>
<body>

<div class="TTWForm-container">

    <div class="TTWForm-wrapper">


        <form enctype="multipart/form-data" action="process_form.php" class="TTWForm clearfix"
              method="post" novalidate="">


            <div id="field1-container" class="field f_100">
                <label for="field1">
                    Text Field
                </label>
                <input name="field1" id="field1" required="required" type="text">
            </div>


            <div id="field2-container" class="field f_100">
                <label for="field2">
                    Text Area
                </label>
                <textarea rows="5" cols="20" name="field2" id="field2" required="required"></textarea>
            </div>


            <div id="field3-container" class="field f_100">
                <label for="field3">
                    Select
                </label>
                <select name="field3" id="field3" required="required">
                    <option id="field3-1" value="Option 1">
                        Option 1
                    </option>
                    <option id="field3-2" value="Option 2">
                        Option 2
                    </option>
                    <option id="field3-3" value="Option 3">
                        Option 3
                    </option>
                </select>
            </div>


            <div id="field6-container" class="field f_100">
                <label for="field6">
                    File
                </label>
                <input size="48" name="field6" id="field6" required="required" type="file">
            </div>


            <div id="field4-container" class="field f_100 radio-group required">
                <label for="field4-1">
                    Radio Buttons
                </label>


                <div class="option clearfix">
                    <input name="field4" id="field4-1" value="Option 1" type="radio">
                    <span class="option-title">
                         Option 1
                    </span>
                </div>


                <div class="option clearfix">
                    <input name="field4" id="field4-2" value="Option 2" type="radio">
                    <span class="option-title">
                         Option 2
                    </span>
                </div>


                <div class="option clearfix">
                    <input name="field4" id="field4-3" value="Option 3" type="radio">
                    <span class="option-title">
                         Option 3
                    </span>
                </div>
            </div>


            <div id="field5-container" class="field f_100 checkbox-group required">
                <label for="field5-1">
                    Checkboxes
                </label>


                <div class="option clearfix">
                    <input name="field5[]" id="field5-1" value="Option 1" type="checkbox">
                    <span class="option-title">
                         Option 1
                    </span>
                    <br>
                </div>


                <div class="option clearfix">
                    <input name="field5[]" id="field5-2" value="Option 2" type="checkbox">
                    <span class="option-title">
                         Option 2
                    </span>
                    <br>
                </div>


                <div class="option clearfix">
                    <input name="field5[]" id="field5-3" value="Option 3" type="checkbox">
                    <span class="option-title">
                         Option 3
                    </span>
                    <br>
                </div>
            </div>


            <div id="form-submit" class="field f_100 clearfix submit">
                <input value="Submit" type="submit">
            </div>
        </form>
    </div>
</div>

</body>
</html>