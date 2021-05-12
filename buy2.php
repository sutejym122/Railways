<center>

<form style="" method="post" action="dash.php">
					
			
			<p>Select A Train</p>
		
		    <select style=" weight:500px; height: 30px ; margin:10px;"  name="tname" required > 
			
			<?php
include "config.php";
$p1=$_GET["s"];
$p2=$_GET["D"];
$_SESSION["p1"]=$p1;
$_SESSION["p2"]=$p2;


$sql = "Select name from train where (place1='$p1' and place2='$p2')  or (route like '$p1' and route='$p2') limit 1";


$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
       echo '<option value="'.$row["name"].'">'.$row["name"].'</option>';
	   $tname=$row["name"];
    }
}
else{
	echo '<script>
	
	var txt;
var r = confirm("No train Found!! Go Back");
if (r == true) {
    window.location.replace("main.php");

} else {
    window.location.replace("main.php");
}
	
	</script>';
}
?>
		
			</select>
			<br>
			
			
			<p>
			  <label for="modlgn_username">Time</label> <br>
			  <?php
			  $sql = "Select * from train where name='$tname' limit 1";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // outpu	t data of each row
    while($row = $result->fetch_assoc()) {
       echo $row["time"]."<br>";
	   $AC=$row["AC"];
	   $normal=$row["normal"];
	 
    }
}
      if($_GET["cls"]==1){
		  $cost=$_GET["sit"]*$AC;
		  $_SESSION["sit"]=$_GET["sit"];
          $_SESSION["cls"]="AC";
	  }
	  else{
		  $cost=$_GET["sit"]*$normal; 
		  $_SESSION["sit"]=$_GET["sit"];
          $_SESSION["cls"]="Normal";
	  }
		echo'<p>  <label for="modlgn_username">Cost</label> <br>
			  <select name="cost" style=" weight:500px; height: 30px ; margin:10px;">
			  <option value="'.$cost.'">'.$cost.'</option>
			  </select>
		    </p>';	  
			  ?>
		    </p>
			<br>
			<h3 text-color="red"> Please Remember The ammount Will be Debited From Your Bank connected with this account</h3>
		    <input type="submit" style=" weight:100px; height: 30px ; margin:10px;" name="Submit" value="Next">
		
		</form>
		
		</label>
		</center>