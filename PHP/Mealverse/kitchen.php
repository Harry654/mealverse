<!DOCTYPE html>
<html>
<head>
	<title>Mealverse Kitchen</title>
	<style type="text/css">
	*{
		/*background-color: #008;*/
		color: yellow;
		font-family: lucida handwriting;
	}
	body{
		background-image: url('bck.jpg');
		background-attachment: fixed;
	}
	.user_search{
		color: white;
		background-color: black;
		float: right;
		text-align: center;
		border-radius: 10px;
		margin: auto;
		margin-top: -10px;
	}
	#user_search:focus{
		border-radius: 1px;
		color: yellow;
	}
	.title{
		text-align: center;
		color: yellow;
		font-family: times new roman;
		font-weight: bold;
		border: 2px solid green;
		border-radius: 10px;
		background-color: rgba(100, 0, 0, 0.75);
		width: 50%;
		margin: auto;
	}
	.total{
		background-color: black;
		color: white;
	}
	#order_time, #order_date, #counter{
		font-weight: bold;
		border: 2px solid white;
		border-radius: 10px;
		width: 100px;
		text-align: center;
		background-color: black;
	}
	#order_time, #order_date{
		float: left;
		position: absolute;
	}
	#order_date{
		width: 150px;
	}
	#counter{
		float: right;
	}
	#banner{
		position: fixed;
		width: 100%;
	}
	#banner, #kitchen_title{
		color: white;
		background-color: rgba(0, 255, 0, 0.5);
		border-radius: 10px;
		text-align: center;
		font-weight: bold;
		/*border: 5px solid yellow;*/
		border-radius: 10px;
		/*background-color: red;*/
	}
	#banner:hover{
		background-color: rgba(0, 255, 0, 0.8);
		transition: background-color 1s ease;
	}
	#kitchen_title{
		float: left;
		margin-left: 10px;
		background-color: transparent;
		border-color: transparent;
		width: 100%;
	}
	#tbl_hd{
		background-color: black;
	}
	#username{
		color: white;
		text-align: center; 
		background-color: black;
		font-weight: bold;
		border: 2px solid white;
		border-radius: 10px;
	}
	#fieldset{
		background-color: rgba(100, 0, 0, 0.75);
	}
	#cust_info{
		border-color: white; 
		padding: 25px; 
		border-radius: 10px; 
		margin: auto;
	}
	.cust_info{
		color: white; 
	}
	</style>
</head>
<body>
<div id="banner"><br />
<form action="kitchen.php" method="post">
	<input class="user_search" type="submit" value="search" name="user_search_btn" />
	<input id="user_search" class="user_search" type="text" name="cust_ID" placeholder="Customer Search" required />
</form>
<h1 id='kitchen_title' class='title'>Mealverse Kitchen</h1>

<?php
// echo phpversion();
$servername = "localhost";
$username = "Harrison";
$password = "HarryBrutjacktrump2004.";

try {
	  $conn = new PDO("mysql:host=$servername;dbname=mealverse_user", $username, $password);
	  // set the PDO error mode to exception
	  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	  // echo "Connected successfully" . "<br />";
	  date_default_timezone_set("Africa/Lagos");

	  $pending = $conn->prepare("SELECT * FROM customer_order WHERE delivered = 0");
	  $pending->execute();

	echo "<h1 id='pending_status' class='title'>" . sizeof($pending->fetchAll()) . " new orders</h1>";
  	function user_search(){
		global $conn;
		$cust_ID = $_POST['cust_ID'];
	  	// try{
	  	$stmt = $conn->prepare("SELECT * FROM user_signup_info WHERE cust_ID = '$cust_ID'");
  		$stmt->execute();

  		foreach(($stmt -> fetchAll()) as $profile){
  			echo "<table id='cust_info' border='3'><th colspan='2' class='cust_info'>" . $cust_ID . ". " . $profile['username'] . "</th><tr><td class='cust_info'>Username</td><td class='cust_info'>" . $profile['username'] . "</td><tr><td class='cust_info'>Email</td><td class='cust_info'>" . $profile['email'] . "</td><tr><td class='cust_info'>Phone Number</td><td class='cust_info'>" . $profile['phone_number'] . "</td><tr><td class='cust_info'>Dietary Concern</td><td class='cust_info'>" . $profile['dietary_concern'] . "</td><tr><td class='cust_info'>Entry Date</td><td class='cust_info'>" . $profile['enrollment_date'] . "</td><tr><tr><td class='cust_info'>Orders Placed</td><td class='cust_info'>" . $profile['orders_placed'] . "</td></tr></table>";
  		  	}
  		  	// echo ($stmt->execute());

	}

	if(isset($_POST['user_search_btn']))
	{
	   user_search();
	}

	echo "</div><br /><br /><br /><br /><br /><br /><br /><br />";
  } catch(PDOException $e) {
  echo "<br /><br />" . "Connection failed: " . $e->getMessage();
}
?>

<br /><h1 class="title">Customer Orders</h1><br /><hr /><br />


<?php


		$get_order = $conn->prepare("SELECT * FROM customer_order WHERE delivered = 0 ORDER BY  order_date DESC, order_time DESC");
		$get_order->execute();
		$counter = 1;
		foreach (($get_order->fetchAll()) as $order) {
			$total = 0;
			$qty_total = 0;

			$current_user = $conn->prepare("SELECT * FROM user_signup_info WHERE cust_ID = '" . $order['cust_ID'] . "'");
			$current_user->execute();
			foreach (($current_user->fetchAll()) as $customer) {
					echo "<fieldset id='fieldset'><p id='order_date'>" . $order['order_date'] . "</p><br /><br /><p id='order_time'>" . $order['order_time'] . "</p><p id='counter'>" . $counter . "</p><legend id='username'>" . $customer['username'] . "</legend><table border='5' style='margin: auto; width: 50%; text-align: center; color: white;'><th colspan='4' style='background-color: black; color: white;'>Customer ID: " . $customer['cust_ID'] . "</th><tr><td class='tbl_hd'>Item</td><td class='tbl_hd'>Price(N)</td><td class='tbl_hd'>Quantity</td><td class='tbl_hd'>Amount(N)</td></tr>";
					$ordered_items = $conn->prepare("SELECT * FROM ordered_items WHERE order_ID = '" . $order['order_ID'] . "'");
					$ordered_items->execute();

					foreach (($ordered_items->fetchAll()) as $item) {
						$food_items = $conn->prepare("SELECT * FROM food_items WHERE item_ID = '" . $item['item_ID'] . "'");
						$food_items->execute();
						foreach (($food_items->fetchAll()) as $food) {
							$amount = $food['item_price']*$item['quantity'];
							echo "<tr><td>" . $food['item_name'] . "</td><td>" . $food['item_price'] . "</td><td>" . $item['quantity'] . "</td><td>" . $amount . "</td></tr>";

							$total +=  $amount;
							$qty_total += $item['quantity'];
						}
					}
					echo "<tr><td class='total' colspan='2'>Total</td><td class='total'>" . $qty_total . "</td><td class='total'>" . $total . "</td></tr>";
					echo "</table></fieldset><br /><hr /><br />";
			}
			$counter++;
		}
?>

<script type="text/javascript">
	let color1 = 'white';
	let color2 = 'white';
	function change_color(){
		if (color1 == 'white') {
			document.getElementById('kitchen_title').style.color = 'yellow';
			color1 = 'yellow';
		} else{
			document.getElementById('kitchen_title').style.color = 'white';
			color1 = 'white';
		};

		if (color2 == 'white') {
			document.getElementById('pending_status').style.color = 'transparent';
			color2 = 'transparent';
		} else{
			document.getElementById('pending_status').style.color = 'white';
			color2 = 'white';
		};
	}
	setInterval(change_color, 1000);
</script>
</body>
</html>