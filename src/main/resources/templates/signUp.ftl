<#ftl encoding="UTF-8">
<html>
<head>
    <link href="/css/styles.css" rel="stylesheet" type="text/css"/>
    <link href="/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>

<div class="form-style-2">
    <div class="form-style-2-heading">
        Please Sign Up!
    </div>
    <form method="post" action="/signUp">
        <label for="login">Login
            <input class="input-field" type="text" id="login" name="login">
        </label>
        <label for="password">Password
            <input class="input-field" type="password" id="password" name="password">
        </label>
        <label for="first_name">First Name
            <input class="input-field" type="text" id="first_name" name="firstName">
        </label>
        <label for="last_name">Last Name
            <input class="input-field" type="text" id="last_name" name="lastName">
        </label>
        <label for="remember-me">
            <input type="checkbox" id="remember-me" name="remember-me">
        </label>
        <input type="submit" value="Sign Up">
    </form>
</div>
</body>
</html>