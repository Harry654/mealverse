	<?php
	try {
        require('dbconn.php'); //import the database connection code.
        $op_code = $decodedData['op_code'];
		  date_default_timezone_set("Africa/Lagos");

		  function get_categories(){
              global $conn, $categories;
              $food_items = array();
              $categories = array();
              $main_array = array();
				$get_categories = $conn->prepare("SELECT category FROM food_items WHERE 1 ORDER BY category ASC");
				$get_categories->execute();
				foreach (($get_categories->fetchAll()) as $cat) {
					if (!(in_array($cat['category'], $categories))) {
						array_push($categories, $cat['category']);
					}
				}
				foreach ($categories as $category) {

			  		$get_items = $conn->prepare('SELECT * FROM food_items WHERE category="' . $category . '" ORDER BY item_name ASC');
					$get_items->execute();

					$food_items[$category] = json_encode($get_items->fetchAll());
			  	}
                  echo json_encode($food_items);
            }

		  function place_order(){
              global $conn, $decodedData;
			  $code = 0;
			  $cust_ID = $decodedData['cust_ID'];
			  $salted_UUID = mcrypt_create_iv(1000);
			  $UUID = hash('sha256', $salted_UUID);
			  $order_date = date("Y-m-d");
              $order_time = date("H : i a");
			  $cart = $decodedData['cart'];



			  $cust_order = "INSERT INTO customer_order (cust_ID, order_ID, order_time, order_date, delivered) VALUES ('$cust_ID', '$UUID', '$order_time', '$order_date', 0)";
        		$conn->exec($cust_order);

				foreach (($cart) as $food => $food_props) {
					$quantity = $food_props['quantity'];
					$item_ID = $food_props['item_ID'];
					$cust_order = "INSERT INTO ordered_items (cust_ID, order_ID, quantity, item_ID) VALUES ('$cust_ID', '$UUID', '$quantity', '$item_ID')";
        			$conn->exec($cust_order);

					$get_likes_ = $conn->prepare("SELECT likes_, dislikes_ FROM food_items WHERE item_ID='$item_ID'");
			  		$get_likes_->execute();
					foreach(($get_likes_->fetchAll()) as $like_){
						$likes_ = $like_['likes_'] + $food_props['likes_'];
						$dislikes_ = $like_['dislikes_'] + $food_props['dislikes_'];

						$update_likes_ = "UPDATE food_items SET likes_='$likes_', dislikes_='$dislikes_' WHERE item_ID='$item_ID'";

						// Prepare statement
						$stmt = $conn->prepare($update_likes_);

						// execute the query
						$stmt->execute();
					}

				}

				$get_orders_placed = $conn->prepare("SELECT orders_placed FROM user_signup_info WHERE cust_ID='$cust_ID'");
			  	$get_orders_placed->execute();
				foreach(($get_orders_placed->fetchAll()) as $order){
					$orders_placed = $order['orders_placed'] + 1;
				}

				$update_orders_placed = "UPDATE user_signup_info SET orders_placed='$orders_placed' WHERE cust_ID='$cust_ID'";

				// Prepare statement
				$stmt = $conn->prepare($update_orders_placed);

				// execute the query
				$stmt->execute();

				$code = 1;
				echo json_encode(array('msg'=>'Order Placed Successfully!', 'code'=>$code));


            }

          if ($op_code == 1){
              get_categories();
          }
		  if ($op_code == 2){
				place_order();
			}

	} catch(PDOException $e) {
	//   echo "<br /><br />" . "Connection failed: " . $e->getMessage();
    echo (json_encode(array('msg'=>'There was an error. Please try again', 'code'=>$code)));
	}
	?>