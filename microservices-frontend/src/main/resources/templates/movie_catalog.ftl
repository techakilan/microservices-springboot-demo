<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Catalog Service</title>
    <style>
    table, th, td {
        border: 1px solid;
    }
    </style>
</head>

<body>
    <h1>Movie Catalog Page</h1>
    <table>
        <tr><th>Name</th><th>Description</th><th>Rating</th></tr>
        <#list movie_list as item>    
            <tr>
                <td>${item.name}</td>
                <td>${item.desc}</td>
                <td>${item.rating}</td>
            </tr>   
        </#list>
    </table>
   
</body>

</html>