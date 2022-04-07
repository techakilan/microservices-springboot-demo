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
            <h3>Welcome user</h3>
            <h4>Get Movie info by Id</h4>
            
            <form action="/movie-info" method="post">
                    <div>Enter MovieId:(upto 25000)</div>
                    <input type="text" name="movieId"/>
                    <br/><br/>
                    <input type="submit" value="Submit"/>
                    <input type="reset" value="Reset"/>
            </form>
            <h4>Get Movie Catalog by user Id</h4>
            <form action="/movie-catalog" method="post">
                    <div>Enter user Id:</div>
                    <input type="text" name="userId"/>
                    <br/><br/>
                    <input type="submit" value="Submit"/>
                    <input type="reset" value="Reset"/>
            </form>
        <#else>
            <h3>Welcome!!!</h3>
            Login to use the movie catalog services
            <a href="/login">Login</a>
        </#if>
   
</body>

</html>