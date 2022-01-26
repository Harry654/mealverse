<?php
	try {
        require('dbconn.php'); //import the database connection code.
        // $op_code = $decodedData['op_code'];
        $op_code = 1;
		  date_default_timezone_set("Africa/Lagos");

        // echo 'done';
        // $cust_ID = $decodedData['cust_ID'];
        function get_orders(){
            global $conn;
            $cust_ID = 2;
            $get_orders = $conn->prepare("SELECT order_ID FROM customer_order WHERE cust_ID='$cust_ID'");
            $get_orders->execute();
            echo json_encode($get_orders->fetchAll());
        
                }
        // foreach(() as $order){
        //     echo $order['order_ID'] . '<br />';
        // }
        if($op_code == 1){
            get_orders();
        }

	} catch(PDOException $e) {
	//   echo "<br /><br />" . "Connection failed: " . $e->getMessage();
    echo (json_encode(array('msg'=>'There was an error. Please try again', 'code'=>$code)));
	}
	?>