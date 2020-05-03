<#ftl encoding="UTF-8">
<html>
<head>
    <title>Add User</title>
    <link href="/css/styles.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="form-style-2">
    <div class="form-style-2-heading">
        Please Sign Up!
    </div>
    <form method="post" action="/users">
        <label for="first_name">First name
            <input class="input-field" type="text" id="first_name" name="first_name">
        </label>
        <label for="last_name">Last name
            <input class="input-field" type="text" id="last_name" name="last_name">
        </label>
        <input type="submit" value="Add user">
    </form>
</div>

<div class="form-style-2">
    <div class="form-style-2-heading">
        Already registered!
    </div>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
        </tr>
        <#list usersFromServer as user>
            <tr>
                <td>${user.firstName}</td>
                <td>${user.lastName}</td>
            </tr>
        </#list>
    </table>
</div>
</body>
</html>