<?php
require 'meniu.php';
require 'connect_db.php';
?>
<html>
    
        <head>
            <title>Home</title>
        </head>
        <table class="tabel">
                        <tr>
                        <th>Id</th>
                        <th>Marca</th>
                        </tr>
                        <?php
                        if($conn -> connect_error){
                            die("Connection failed:". $conn->connect_error);
                        }
                            $sql="SELECT * FROM modele;";
                            $result=mysqli_query($conn,$sql);
                            if($result)
                            {
                                while($row=mysqli_fetch_assoc($result)){
                                        echo'<tr><td>'.$row['id_model'].'</td><td>'.$row['nume_model'].'</td></tr>';
                                }
                                echo '</table>';
                            }
                        ?>    
                    </table>     
</html>

