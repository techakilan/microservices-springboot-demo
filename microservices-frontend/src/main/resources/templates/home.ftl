<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Catalog Service</title>
</head>

<body>
    <h1>Movie Catalog Service</h1>
    <#if is_logged_user>
        <h3>Welcome logged user</h3>
        Click MovieId below to get info
        <table>
            <tr><td>MovieId</td></tr>
            <tr><td><a href="http://localhost:9095/movies/100">100</a></td></tr>
            <tr><td><a href="http://localhost:9095/movies/200">200</a></td></tr>
        </table>
        <a href="/logout">Logout</a>
    <#else>
        <h3>Welcome!!!</h3>
        Login to use the movie catalog services
        <a href="/login">Login</a>
    </#if>
</body>

</html>