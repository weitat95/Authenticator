<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<!DOCTYPE html>

<html lang="en">
<head>
	<%@ include file="meta.jsp" %>  
	<title>Login</title> 
</head>

<body>

<%@ include file="navbar.jsp" %>
<%@ include file="header.jsp" %>

<main class="container p-5 d-flex justify-content-center">
<form action="/Authenticator/login" method="post" class="needs-validation" novalidate>
    <div class="form-group">
        <input autocomplete="off" autofocus class="form-control" name="username" placeholder="Username" type="text" required>
        <div class="invalid-feedback">Empty username field</div>
    </div>
    <div class="form-group">
        <input class="form-control" name="password" placeholder="Password" type="password" required>
        <div class="invalid-feedback">Empty password field</div>
    </div>
    <button class="btn btn-primary" type="submit">Login</button>
</form>

    <script>
        (function() {
          'use strict';
            window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
              form.addEventListener('submit', function(event) {
                if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
                }
                form.classList.add('was-validated');
              }, false);
            });
          }, false);
        })();
    </script>
</main>
</body>

</html>