<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nursery-Login</title>
</head>
<?php
 if (isset($_POST['login'])) {
    if (  isset($_POST['']) && isset($_POST['pass'])) {      
          require_once 'initialise.php';
        $conn = mysqli_connect($host, $user, $ps, $project);
        if(!$conn)
        {
            echo "<script>alert(\"Database error retry after some time !\")</script>";
        }
        $username=$_POST["USERNAME"];
	    $password=$_POST["password"];
        $sql = "select * from TABLE 
            where username='".$username."' and password='".$password."'";
            $result = mysqli_query($conn,$sql);
            $row=mysqli_fetch_array($result);
?>
<body>
    
</body>
</html>