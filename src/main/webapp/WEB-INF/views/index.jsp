<%--
  Created by IntelliJ IDEA.
  User: hoangviet
  Date: 8/20/2018
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1 style="text-align: center">Calculator</h1>
    <form method="get" action="/result">
        <div class="row">
            <div class="col-2"></div>
            <div class="col-4">
        <p>Number 1: <input type="number" name="number1" value="${number1}"></p>
        <p>Number 2: <input type="number" name="number2" value="${number2}"></p>
            </div>
            <div class="col-6"></div>
        </div>
        <div class="row">
            <div class="col-2"></div>
            <div class="col-4">
                <button class="btn btn-dark" type="submit" name="operator" value="+">Cong</button>
                <button class="btn btn-dark" type="submit" name="operator" value="-">Tru</button>
                <button class="btn btn-dark" type="submit" name="operator" value="*">Nhan</button>
                <button class="btn btn-dark" type="submit" name="operator" value="/">Chia</button>
            </div>
            <div class="col-6"></div>
        </div>
    </form>
    <h1 style="text-align: center">Result : <p>${select}</p></h1>
</div>
</body>
</html>
