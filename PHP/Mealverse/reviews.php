<?php
// $message = 'none';
    try {
        require('dbconn.php'); //import the database connection code.
        $op_code = $decodedData['op_code'];
        function insert_review(){
            global $conn, $decodedData;

            $username = $decodedData['username'];
            $phone_number = $decodedData['phone_number'];

            function get_ID($phone_number){
                global $conn;
                $cust_ID_query = $conn->prepare("SELECT cust_ID FROM user_signup_info WHERE phone_number = '$phone_number'");
                $cust_ID_query->execute();
        
                foreach ($cust_ID_query as $cust_ID) {
                    return $cust_ID['cust_ID'];
                }
            }
            $cust_ID = get_ID($phone_number);
            
            $review = $decodedData['review'];
            
            date_default_timezone_set("Africa/Lagos");
            $review_date = date("Y-m-d");
            $review_time = date("H : i a");
            $rating = $decodedData['rating'];

            $review_info = 'INSERT INTO reviews_info (username, cust_ID, review, review_date, review_time, rating) VALUES ("' . $username . '", "' . $cust_ID . '", "' . $review . '", "' . $review_date . '", "' . $review_time . '", "' . $rating . '")';
            $conn->exec($review_info);

            $message = 'Thanks for the feedback!'; //set success message
            $response = array("message" => $message);
            // convert response to json format
            echo json_encode($response);
        }

        function get_review(){
            global $conn, $message;
            $reviews_query = $conn->prepare("SELECT * FROM reviews_info WHERE 1 ORDER BY  review_date DESC, review_time DESC");
            $reviews_query->execute();
    
            echo json_encode($reviews_query->fetchAll());
        }

        if ($op_code == 0) {
            insert_review();
        }else{
            get_review();
        }

    } catch(PDOException $e) {
        
            $message = 'Something went wrong. Please try again'; //set error message
            $response = array("message" => $message);
            // convert response to json format
            // echo json_encode($response);
            // echo "<br /><br />" . "Connection failed: " . $e->getMessage();
        }

    

    
?>
