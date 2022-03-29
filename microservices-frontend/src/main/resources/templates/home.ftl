<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
</head>

<body>
    
    <#if is_logged_user>
        Welcome logged user
        <a href="/logout">Logout</a>
    <#else>
        Welcome!!!
        <a href="/login">Login</a>
    </#if>
</body>

</html>