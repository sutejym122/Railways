
<?php
include "config.php";


$p1=$_GET["s"];
$p2=$_GET["D"];
$_SESSION["p1"]=$p1;
$_SESSION["p2"]=$p2;


$sql = "Select no_of_seats from train where (place1='$p1' and place2='$p2') or (route like '$p1' and route='$p2') limit 1";


$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
		echo "number of seats left";
       echo '<option value="'.$row["no_of_seats"].'">'.$row["no_of_seats"].'</option>';
	   $id=$row["no_of_seats"];
	   
    }
}

if($id==0)
{
	
	echo'<script>alert("seats are over")</script>';
	include 'buy1.php';
	
}
else
{
	include 'buy2.php';
}
?>


</form>

