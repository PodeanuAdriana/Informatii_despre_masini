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
        <div class="incadrare1">
                <p class="labeluri">Afiseaza sedii pentru fiecare marca (jonctiune): </p>
                    <table class="tabel">
                        <tr>
                        <th>Id</th>
                        <th>Localitate</th>
                        <th>Nr_telefon</th>
                        <th>Site_web</th>
                        </tr>
                        <?php
                        if($conn -> connect_error){
                            die("Connection failed:".$conn->connect_error);
                        }
                            $sql="SELECT * FROM sedii INNER JOIN marci where marci.cod_sediu=sedii.cod_sediu;";
                            $result=mysqli_query($conn,$sql);
                            if($result)
                            {
                                while($row=mysqli_fetch_assoc($result)){
                                        echo'<tr><td>'.$row['cod_sediu'].'</td><td>'.$row['localitate'].'</td><td>'.$row['nr_telefon'].'</td><td>'.$row['site_web'].'</td></tr>';
                                }
                                echo '</table>';
                            }
                            $conn->close();
                        ?>    
                    </table>  
         </div>   
         <div class="incadrare1">
                    <p class="labeluri">Afiseaza luna si an vanzare si numarul acestora  pentru fiecare model (jonctiune): </p>
                    <table class="tabel">
                        <tr>
                        <th>Id</th>
                        <th>Nr vanzari</th>
                        <th>Luna vanzare</th>
                        <th>An vanzari</th>
                        </tr>
                        <?php
                        include 'connect_db.php';
                        if($conn -> connect_error){
                            die("Connection failed:".$conn->connect_error);
                        }
                            $sql="SELECT * FROM istoric_vanzari INNER JOIN modele  where modele.cod_vanzari=istoric_vanzari.cod_vanzari;";
                            $result=mysqli_query($conn,$sql);
                            if($result)
                            {
                                while($row=mysqli_fetch_assoc($result)){
                                        echo'<tr><td>'.$row['cod_vanzari'].'</td><td>'.$row['nr_vanzari'].'</td><td>'.$row['luna_vanzari'].'</td><td>'.$row['an_vanzari'].'</td></tr>';
                                }
                                echo '</table>';
                            }
                        ?>    
                    </table>   
            </div>  
         <div class="incadrare1">
                    <p class="labeluri">Afiseaza motoarele care sunt electrice:(proiectie): </p>
                    <table class="tabel">
                        <tr>
                        <th>Cod_motor</th>
                        <th>Nume_motor</th>
                        <th>Distributie</th>
                        <th>Putere</th>
                        <th>Nr_cilindrii</th>
                        <th>Tip_motor</th>
                        </tr>
                        <?php
                        if($conn -> connect_error){
                            die("Connection failed:".$conn->connect_error);
                        }
                            $sql="SELECT * FROM motoare where tip_motor='lant';";
                            $result=mysqli_query($conn,$sql);
                            if($result)
                            {
                                while($row=mysqli_fetch_assoc($result)){
                                        echo'<tr><td>'.$row['cod_motor'].'</td><td>'
                                            .'<td>'.$row['nume_motor'].'</td><td>'
                                            .'<td>'.$row['distributie'].'</td></td>'
                                            .'<td>'.$row['putere'].'</td></td>'
                                            .'<td>'.$row['nr_cilindri'].'</td></td>'
                                            .'<td>'.$row['tip_motor'].'</td></tr>';
                                }
                                echo '</table>';
                            }
                        ?>    
                    </table>     
        </div>
        <div class="incadrare1">
                    <p class="labeluri">Afiseaza  toate inregistrarile care au gradul  de opacitate  diferit de gradul de metalizare(diferenta): </p>
                    <table class="tabel">
                        <tr>
                        <th>grad_opacitate</th>
                      
                        </tr>
                        <?php
                        if($conn -> connect_error){
                            die("Connection failed:".$conn->connect_error);
                        }
                            $sql="SELECT grad_opacitate FROM opace as opa where not exists (select grad_metalizare from metalizate as meta where(opa.grad_opacitate=meta.grad_metalizare));";
                            $result=mysqli_query($conn,$sql);
                            if($result)
                            {
                                while($row=mysqli_fetch_assoc($result)){
                                        echo'<tr><td>'.$row['grad_opacitate'].'</td><tr>';
                                           
                                }
                                echo '</table>';
                            }
                        ?>    
                    </table>     
        </div>
                    
    </body>
</html>

