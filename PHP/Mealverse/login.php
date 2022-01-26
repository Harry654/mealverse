<?php
    try {
        require('dbconn.php'); //import the database connection code.
        
        $phone_number = $decodedData['phone_number'];
        $password = $decodedData['password'];

        $login_query = $conn->prepare("SELECT COUNT(*) AS total FROM user_signup_info  WHERE phone_number = '$phone_number'");
        $login_query->execute(); //execute query
        $result = $login_query->fetchObject();
        
            $code = 0; //initially set to failure code
            
            if (($result->total)>0){ //check if the entered phone number matches any rows
                $login_query = $conn->prepare("SELECT * FROM user_signup_info  WHERE phone_number = '$phone_number'");
                $login_query->execute();
            foreach(($login_query->fetchAll()) as $cust_info){
                $cust_ID = $cust_info['cust_ID'];
                $username = $cust_info['username'];
                $phone_number = $cust_info['phone_number'];
                $email = $cust_info['email'];
                $dbPassword = $cust_info['password'];
                $salt1 = $cust_info['salt1'];
                $salt2 = $cust_info['salt2'];
                $enrollment_date = $cust_info['enrollment_date'];
                $saltedPW = $salt1 . $password . $salt2;
                $hashedPW = hash('sha256', $saltedPW); //hash the user-entered password
                $orders_placed = $cust_info['orders_placed'];
            }
            if($hashedPW == $dbPassword){ //check if the entered password matches the hashed password retrieved from the DB 
                $message = 'Login Successful'; //set success message
                $code = 1; //set success code
            }else{
                $message = 'Incorrect Password!'; //set error message
            }
        }else{ //set error message
            $message = 'The entered phone number is not registered!'; //set error message
            $cust_ID = '';
            $username = '';
            $email = '';
            $enrollment_date = '';
        }
        $response = array("message" => $message, "code" => $code, "cust_ID" => $cust_ID, "username" => $username, "phone_number" => $phone_number, "email" => $email, "enrollment_date" => $enrollment_date, "orders_placed" => $orders_placed);

    } catch(PDOException $e) {
        $message = 'An error occured during login. Please try again'; //set error message
        $code = 0;
        $response = array("message" => $message, "code" => $code);
        // echo "<br /><br />" . "Connection failed: " . $e->getMessage();
    }

    // convert response to json format
    echo json_encode($response);
?>