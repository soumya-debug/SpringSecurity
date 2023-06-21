<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3"
	xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout">
<head>
<title>Greetings!</title>
<style>
/* Advanced CSS Styles */

/* Body Styles */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
}

/* Heading Styles */
h1 {
    font-size: 24px;
    color: #333;
}

/* Link Styles */
a {
    text-decoration: none;
    color: #0066cc;
}

a:hover {
    text-decoration: underline;
}

/* Paragraph Styles */
p {
    font-size: 16px;
    line-height: 1.5;
    color: #666;
    margin-bottom: 10px;
}
</style>
</head>
<body>
	<h1>Welcome!</h1>

	<p>
		Click <a th:href="@{/welcome}">here</a> to see a greeting.
	</p>
</body>
</html>
