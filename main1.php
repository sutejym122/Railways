<?php

include 'head2.php';
if(isset($_GET["Next"])){
	include 'buy2.php';
}
else
include 'buy1.php';
include 'footer.php';


?>