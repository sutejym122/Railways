<center>
<form style="" method="get" action="main.php">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
					
			
			<p>Source</p>
		
		    <select style=" weight:500px; height: 30px ; margin:10px;width:600px;"  name="s" required > 
			<option value="" selected="selected"></option>
			<?php
include "config.php";
$sql = "Select name from station";

$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
       echo '<option value="'.$row["name"].'">'.$row["name"].'</option>';
    }
}
?>
		
			</select>
			<br>
			<p>Destination</p>
		
		    <select style=" weight:500px; height: 30px ; margin:10px;width:600px;"  name="D" required>
			<option value="" selected="selected"></option>
			 <?php
			 $sql = "Select name from station";

$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
       echo '<option value="'.$row["name"].'">'.$row["name"].'</option>';
    }
}
			 ?>
			</select
			<br>
			<script>
			$(document).ready(function(){
				var dtToday = new Date();
				
				var month  = dtToday.getMonth()+1;
				var day = dtToday.getDate();
				var year = dtToday.getFullYear();
				if(month < 10)
					month = '0' + month.toString();
				if(day < 10)
					day = '0' + day.toString();
					
				var maxDate = year + '-' + month + '-' + day
				
				$('#dateControl').attr('min',maxDate);
			})
			</script>
			
			<p>  <label for="modlgn_username">Date</label> <br>
			  <input type="date" id ="dateControl"/><br>
			  
		    </p>
			 <p>
              <option for="modlgn_username">No of Seats(Maximum of 10 tickets per user)</option> <br>
			  <select style=" weight:500px; height: 30px ; margin:10px;width:600px;" name="sit" required>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
             </select>
		    </p>
			<br>
			<p>
              <option for="modlgn_username">Select A Class</option> <br>
			 <select style=" weight:500px; height: 30px ; margin:10px;width:600px" name="cls" required>
				<option value="1">AC</option>
				<option value="2">Normal</option>

             </select>
		    </p>
			<br><br>
		    <input type="submit" style=" weight:100px; height: 30px ; margin:10px;" name="Submit" value="Next">
		
		</form>
		
		</option>
	</center>