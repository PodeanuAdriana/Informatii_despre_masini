<?php
require 'connect_db.php';

?>
<html>
    <head>
</head>
<body>
    <table>
        <tr>
            <th>Id</th>
            <th>Marca</th>
            <th>An_fabricatie</th>
</tr>
<?php
if($conn -> connect_error){
    die("Connection failed:".
    $conn->connect_error);
}

$sql="SELECT * FROM marci;";
$result=mysqli_query($conn,$sql);

if($result)
{
    while($row=mysqli_fetch_assoc($result)){
            echo'<tr><td>'.$row['id_marca'].'</td><td>'.$row['nume_marca'].'</td><td>'.$row['an_fabricare_marca'].'</td></tr>';
    }
    echo '</table>';
}
?>
</table>

</body>
</html>

