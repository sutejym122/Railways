	<?php

include 'head.php';
?>

<div class="main">
     <div class="wrap">
      	 <div class="section group">
				<div class="cont span_2_of_blog">
				  <div class="login-title">
           		<h4 class="title">User Signup</h4>
				<div id="loginbox" class="loginbox">
					<form action="insert.php" method="post" name="login" id="login-form">
					  <fieldset class="input">
					    <p id="login-form-username">
					      <label for="modlgn_username">Full Name</label>
					      <input id="modlgn_username" type="text" name="name" class="inputbox" size="18" autocomplete="off" required >
					    </p>
						<p>
					      <label for="modlgn_username">UserName</label>
					      <input id="modlgn_username" type="text" name="username" class="inputbox" size="18" autocomplete="off" required >
					    </p>
						<p>
					      <label for="modlgn_username">Address</label>
					      <input id="modlgn_username" type="text" name="address" class="inputbox" size="18" autocomplete="off" required >
					    </p>
						<p >
					      <label for="mob">Mobile Number</label>
					      <input id="mob" type="Number" min="0" name="mobile" class="inputbox" size="18" autocomplete="off" required  >
					    </p>
						<p >
					      <label for="modlgn_username">Email</label>
					      <input id="modlgn_username" type="email" name="email" class="inputbox" size="18" autocomplete="off" required >
						  
					    </p>
						<p >
					      <label for="modlgn_username">Bank Name</label>
					      <input id="modlgn_username" type="text" name="bankname" class="inputbox" size="18" autocomplete="off" required >
					    </p>
						
						<p >
					      <label for="modlgn_username">Bank A/C Number</label>
					      <input id="modlgn_username" type="Number" min="0" name="acn" class="inputbox" size="18" autocomplete="off" required >
					    </p>
						
					    <p id="login-form-password">
					      <label for="modlgn_passwd">Password</label>
					      <input id="modlgn_passwd" type="password" name="password" class="inputbox" size="18" autocomplete="off" required>
					    </p>
					    <p id="login-form-remember">
					      <label for="modlgn_remember" class="checkbox">I Have Accepted IBS Policy</label>
					      <input id="modlgn_remember" type="checkbox" name="remember" class="checkbox" value="yes" autocomplete="off" required>
					    </p>
					   
					   <button onclick="validation();">Sign up</button>
					  </fieldset>
					 </form>
					 <script type="text/javascript">
					 function validation(){
						 var a=document.getElementById('mob').value;
						 
						 if(a.length<10){
							 alert('check the number');
							 window.location.href = "signup.php";
						 }
						 else{
							 alert('registration succesfull');
							 window.location.href = "login.php";
						 }
						}
					 </script>
					 
				</div>
			</div>   
			</div>
		  <div class="bsidebar span_1_of_blog">
					
					
	     </div>
	   </div>
	   <div class="clear"></div>
	  </div>
   </div>



<?php
include 'footer.php';
?>