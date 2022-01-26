<?php
    try {
        require('dbconn.php'); //import the database connection code.
        
        $username = $decodedData['username'];
        $phone_number = $decodedData['phone_number'];
        $email = $decodedData['email'];

        $salt1 = mcrypt_create_iv(5); // generate random salt1
        $salt2 = mcrypt_create_iv(5); // generate random salt2
        
        $saltedPW = $salt1 . $decodedData['password'] . $salt2;
        $hashedPW = hash('sha256', $saltedPW); //hash the salted password using sha256
        $password = $hashedPW;

        $dietary_concern = $decodedData['dietary_concern'];
        $enrollment_date = $decodedData['enrollment_date'];
        $orders_placed = 0;

        $cust_info = "INSERT INTO user_signup_info (username, phone_number, email, password, salt1, salt2, dietary_concern, enrollment_date, orders_placed) VALUES ('$username', '$phone_number', '$email', '$password', '$salt1', '$salt2', '$dietary_concern', '$enrollment_date', '$orders_placed')";
        $conn->exec($cust_info);

        $message = 'You have been successfully registered'; //set success message
    } catch(PDOException $e) {
        $error = $conn->errorInfo(); //get error information
        if ($error[1] != 1062){ 
            $message = 'An error occured. Please try again'; //set error message
        }else{ //if the error code is for duplicate entry
            $message = 'Phone number already registered! Please use a different number'; //set duplicate message
        }
        // echo "<br /><br />" . "Connection failed: " . $e->getMessage();
    }

    $response = array("message" => $message);

    // convert response to json format
    echo json_encode($response);
?>
