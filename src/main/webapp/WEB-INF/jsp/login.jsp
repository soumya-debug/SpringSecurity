<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="https://www.thymeleaf.org"
      xmlns:sec="https://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
    <head>
        <title>Login</title>
        <style>
            /* Advanced CSS Styles */

            /* Body Styles */
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 20px;
                background-color: #f2f2f2;
            }

            /* Error and Logout Message Styles */
            .message {
                font-size: 18px;
                color: #ff0000;
                margin-bottom: 10px;
            }

            /* Form Styles */
            form {
                max-width: 300px;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            label {
                font-size: 16px;
                color: #333;
            }

            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            input[type="submit"] {
                background-color: #0066cc;
                color: #fff;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                border-radius: 5px;
            }

            input[type="submit"]:hover {
                background-color: #0052a3;
            }

            /* Return to Main Page Link Styles */
            a {
                display: block;
                text-align: center;
                margin-top: 20px;
                color: #333;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="message" th:if="${param.error}">
            Invalid username or password.
        </div>
        <div class="message" th:if="${param.logout}">
            You have been logged out.
        </div>
        <form th:action="@{/login}" method="post">
            <div><label> User Name: <input type="text" name="username"/> </label></div>
            <div><label> Password: <input type="password" name="password"/> </label></div>
            <div><input type="submit" value="Sign In"/></div>
        </form>
        
        <a href="/">Return to Main Page</a>
    </body>
</html>
