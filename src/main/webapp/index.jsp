<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Addition in JSP</title>
</head>
<body style="background-color: orange;">
    <h1>Addition of Two Numbers</h1>

    <form action="" method="post">
        Enter first number: <input type="text" name="num1"><br>
        Enter second number: <input type="text" name="num2"><br>
        <input type="submit" value="Add">
    </form>

    <%-- Java code for addition --%>
    <%
        // Retrieve the values entered by the user
        String num1Str = request.getParameter("num1");
        String num2Str = request.getParameter("num2");

        // Check if both values are present
        if (num1Str != null && num2Str != null) {
            try {
                // Convert the string values to integers
                int num1 = Integer.parseInt(num1Str);
                int num2 = Integer.parseInt(num2Str);

                // Calculate the sum
                int sum = num1 + num2;

                // Display the result
    %>
                <p>Result: <%= sum %></p>
    <%
            } catch (NumberFormatException e) {
                // Handle the case where the input is not a valid integer
    %>
                <p>Please enter valid numbers.</p>
    <%
            }
        }
    %>

</body>
</html>
