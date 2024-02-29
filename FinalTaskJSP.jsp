<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Favorite Programming Language Survey</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin-top: 50px;
        }
        #container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }
        #result {
            font-size: 1.5em;
            color: #3498db;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div id="container">
        <h1>Favorite Programming Language Survey</h1>
        <form action="" method="post">
            <label for="language">Select your favorite programming language:</label>
            <select name="language" id="language">
                <option value="Java">Java</option>
                <option value="Python">Python</option>
                <option value="JavaScript">JavaScript</option>
                <option value="C#">C#</option>
                <option value="Ruby">Ruby</option>
            </select>
            <br>
            <input type="submit" value="Submit">
        </form>

        <%
            String selectedLanguage = request.getParameter("language");

            if (selectedLanguage != null && !selectedLanguage.isEmpty()) {
                out.println("<div id='result'>");
                out.println("Awesome choice! " + selectedLanguage + " is a fantastic language!");
                out.println("</div>");
            }
        %>

    </div>

</body>
</html>
