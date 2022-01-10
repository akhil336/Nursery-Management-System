<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nursery-Register</title>
</head>
<?php

if(isset($_POST['submitted'])){

session_start();
if (isset($_POST['CNAME']) && isset($_POST['ADDRESS']) && isset($_POST['PHONE']) && 
isset($_POST['GENDER']) && isset($_POST['PASSWORD']) && isset($_POST['CPASSWORD'])) 
{
    require_once 'initialise.php';//INITIALISED.PHP has $host,user.. initialised
$conn=mysqli_connect($host,$user,$passwd,$db);
if (!$conn) {
    echo "<script>alert(\"Database error retry after some time !\")</script>";
}
$CNAME = $_POST['CNAME'];
$ADDRESS = $_POST['ADDRESS'];
$PHONE = $_POST['PHONE'];
$GENDER=$_POST['GENDER'];
$PASSWORD=$_POST['PASSWORD'];
$CPASSWORD=$_POST['CPASSWORD'];
if ($PASSWORD == $CPASSWORD) {
    $SQL="INSERT INTO `customer` (`CID`, `CNAME`, `ADDRESS`, `GENDER`, `PHONE`, `DATECREATED`, `PASSWORD`,`NID`) VALUES 
    ('1000', 'CUST1', 'PADIL,MANGALORE', 'MALE', '8787878788',CURDATE(), 'CUST1', '100');";
    if (mysqli_query($conn, $SQL)) 
    {
        echo "<script>
        alert('successful!');
        window.location.replace(\"index.php\");</script>";
        session_destroy();
    } 
    else 
    {
        echo "<script>
        alert('Data enter by you already exist in Database, please Sign In');
        window.location.replace(\"index.php\");</script>";
        session_destroy();
    }
}
else{
    echo "<script>alert(' Password should be same');
    window.location.replace(\"registration.php\");</script>";
    session_destroy();
    }
  }
}

?>
<body>
    
</body>
</html>