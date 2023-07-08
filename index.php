<?php
session_start();
require 'meniu.php';
error_reporting( error_reporting() & ~E_NOTICE );
?>
<html>

        <head>
            <title>Home</title>
            
        </head>
        <body>
           <div class="incadrare_1">
                <b class="text">Selectati optiunile pentru a vedea<br>ce vehicul corespunde cerintelor dumneavoastra<br></b>
                <div class="cautare_formular">
                        <form action="rezultate_cautare.php" class="cautare_formular" method="post">
                        <label for="cars" class="text"><br>Alege dimensiunea masini:(lungime*latime*inaltime*greutate)<br></label>
                            <select  class="optiune" name="fdimensiuni_greutate">
                                <option  value="0">0</option>
                                <option value="1730">1730</option>
                                <option value="1690">1690</option>
                            </select>
                            <select  class="optiune" name="fdimensiuni_latime">
                                <option  value="1746">1746</option>
                                <option value="1732">1732</option>
                                <option value="1847">1847</option>
                                <option value="1827">1827</option>
                                <option value="1828">1828</option>
                            </select>
                            <select  class="optiune" name="fdimensiuni_inaltime">
                                <option  value="1534">1534</option>
                                <option value="1467">1467</option>
                                <option value="1493">1493</option>
                                <option value="1428">1428</option>
                                <option value="1463">1463</option>
                                <option value="1508">1508</option>
                            </select>
                            <select  class="optiune" name="fdimensiuni_lungime">
                                <option  value="4020">4020</option>
                                <option value="3997">3997</option>
                                <option value="4762">4762</option>
                                <option value="4829">4829</option>
                                <option value="4824">4824</option>
                            </select>
                            <label for="cars" class="text"><br>Alege caroseria masinii:<br></label>
                            <select  class="optiune" name="fcaroserii">
                                <option  value="monovolume">Monovolume</option>
                                <option value="berlina">Berlina</option>
                                <option value="break">Break</option>
                                <option value="pick-up">Pick-up</option>
                                <option value="mini-couper">Mini-Couper</option>
                            </select>
                            <label for="cars" class="text"><br>Alege culoarea masini:<br></label>
                            <select  class="optiune" name="fculori">
                                <option  value="alb">Alb</option>
                                <option value="albastru">Albastru</option>
                                <option value="negru">Negru</option>
                                <option value="gri">Gri</option>
                                <option value="rosu">Rosu</option>
                            </select><br></br>
                            <label for="cars" class="text"><br>Alege motorul masini:<br></label>
                            <select  class="optiune" name="fmotor">
                                <option  value="benzina">Benzina</option>
                                <option value="motorina">Motorina</option>
                                <option value="hibrid">Hibrid</option>
                                <option value="electrica">Electrica</option>
                            </select>
                            <label for="cars" class="text"><br>Alege dotarea masini:<br></label>
                            <select  class="optiune" name="fdotari">
                                <option  value="aer_conditionat_manual">Aer conditionat manual</option>
                                <option value="aer_conditionat_automat">Aer conditionat automat</option>
                                <option value="tapiterie_piele">Tapiterie piele</option>
                                <option value="ABS">ABS</option>
                                <option value="computer_bord">Computer bord</option>
                                <option value="onglizi_heliomate">Oglinzi heliomate</option>
                            </select><br></br>
                           
                        <input type="submit" name="trimite" class="link" value="Trimite!">
                        <br></br>
                        </form>
                </div>
            </div>
          
        </body>
</html>
<?php
if (isset($_POST['trimite'])) {
    if (!empty($_POST['fdimensiuni_greutate'] && $_POST['fdimensiuni_latime'] &&$_POST['fdimensiuni_inaltime'] &&$_POST['fdimensiuni_lungime'])) {
        $greutate = $_POST['fdimensiuni_greutate'];
        $latime = $_POST['fdimensiuni_latime'];
        $inaltime = $_POST['fdimensiuni_inaltime'];
        $lungime=$_POST['fdimensiuni_lungime'];
       
        $sql = "SELECT * FROM dimensiuni WHERE greutate = '$greutate'AND latime = '$latime' AND inaltime = '$inaltime'AND lungime = '$lungime' ";
        $result = $conn->query($sql);
        
        // Handle the search results
        if ($result->num_rows > 0) {
            // Display or process the data
            while ($row = $result->fetch_assoc()) {
                // Access the data using $row['column_name']
                // Perform further actions as needed
            }
        } else {
            echo'nu am gasit rezultate';
        }
    }
  
if (!empty($_POST['fcaroserii'])) {
    $caroserie = $_POST['fcaroserii'];
    
   
    $sql = "SELECT * FROM tipuri_caroserii WHERE nume_caroserie = '$caroserie'";
    $result = $conn->query($sql);
    
    // Handle the search results
    if ($result->num_rows > 0) {
        // Display or process the data
        while ($row = $result->fetch_assoc()) {
            // Access the data using $row['column_name']
            // Perform further actions as needed
        }
    } else {
        echo'nu am gasit rezultate';
    }
}
if (!empty($_POST['fculori'])) {
    $culori = $_POST['fculori'];
    
   
    $sql = "SELECT * FROM culori WHERE nume_culoare = '$culori'";
    $result = $conn->query($sql);
    
    // Handle the search results
    if ($result->num_rows > 0) {
        // Display or process the data
        while ($row = $result->fetch_assoc()) {
            // Access the data using $row['column_name']
            // Perform further actions as needed
        }
    } else {
        echo'nu am gasit rezultate';
    }
}
if (!empty($_POST['fmotor'])) {
    $motor = $_POST['fmotor'];
    
   
    $sql = "SELECT * FROM motoare WHERE nume_motor = '$motor'";
    $result = $conn->query($sql);
    
    // Handle the search results
    if ($result->num_rows > 0) {
        // Display or process the data
        while ($row = $result->fetch_assoc()) {
            // Access the data using $row['column_name']
            // Perform further actions as needed
        }
    } else {
        echo'nu am gasit rezultate';
    }
}
if (!empty($_POST['fdotari'])) {
    $dotari = $_POST['fdotari'];
    
   
    $sql = "SELECT * FROM dotari WHERE nume_culoare = '$culori'";
    $result = $conn->query($sql);
    
    // Handle the search results
    if ($result->num_rows > 0) {
        // Display or process the data
        while ($row = $result->fetch_assoc()) {
            // Access the data using $row['column_name']
            // Perform further actions as needed
        }
    } else {
        echo'nu am gasit rezultate';
    }
}  
}


?>






