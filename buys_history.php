<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<?php
require_once 'initialise.php';
$conn=mysqli_connect($host,$user,$passwd,$db);

$cid = $_SESSION["CID"];
$sql = "SELECT * FROM BUY WHERE CID=$cid;";
$result = mysqli_query($conn,$sql);

$total_orders= mysqli_num_rows($result); //num of rows i.e total orders customer has done

$sql = "SELECT * FROM BUY WHERE CID=$CID ORDER BY BNO DESC;";
$result2 = mysqli_query($conn,$sql);
$out='';
$output='';
while($row=mysqli_fetch_array($result2)) {
    $pid = $row['PID'];
    $pname = "SELECT PNAME,PricePerPlant FROM PLANTS WHERE PID=$pid;";
    $res = mysqli_query($conn,$pname);
    $rowPname = mysqli_fetch_array($res);
 $output = '';
 $bno = $row['BNO'];
 $output .='<tr><td>'.$row['CID'].'</td>';// .= is concatination
 $output .= '<td>'.$rowPname['PNAME'].'</td>';
 $output .= '<td>'.$row['QUANTITY'].'</td>';
 $output .= '<td>'.$rowPname['PricePerPlant'].'</td>';
 $output .= '<td>'.$row['Price'].'</td>'; // price is total price equalsto quantity * priceperplant
 $output .= '<td>'.$row['BDATE'].'</td></tr>';

 $out .= '<div class="bnoTable">
            <strong>B_no: '.$bno.'</strong>
            </div>
            <table class ="OrdHistorytable">
                    <tr>
                        <td>Customer ID</td>
                        <td>Plant Name</td>
                        <td>Quantity</td>
                        <td>Price/plant</td>
                        <td>Total price</td>
                        <td>Bought Date</td>'
                        .$output.
            '</table>';
}


?>
<body>
    <?php
    echo $out;
    ?>
    </body>
    </html>