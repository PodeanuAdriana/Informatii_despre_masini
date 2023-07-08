<?php
require 'meniu.php';
include 'connect_db.php';
//session_start();
?>
<html>
    
        <head>
            <title>Marci</title>
            <link rel="stylesheet" href="meniu.css">
        </head>
    <body>
                
                    <table class="tabel">
                        <tr>
                        <th>Id</th>
                        <th>Model</th>
                        <th>An_fabricatie</th>
                        </tr>
                        <?php
                        if($conn -> connect_error){
                            die("Connection failed:".$conn->connect_error);
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

