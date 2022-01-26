<?php
    try {
        require('dbconn.php'); //import the database connection code.
        $op_code = $decodedData['op_code'];

        function get_slots(){
            global $conn;
            $parkingLot_query = $conn->prepare("SELECT * FROM parkinglot_info WHERE 1");
            $parkingLot_query->execute();
            echo json_encode($parkingLot_query->fetchAll());
        }


        if ($op_code == 1){
            get_slots();
        }


            // $message = 'Thanks for the feedback!'; //set success message

    } catch(PDOException $e) {
        
            $message = 'Something went wrong. Please try again'; //set error message
            // echo "<br /><br />" . "Connection failed: " . $e->getMessage();
            $response = array("message" => $message);
            // convert response to json format
            echo json_encode($response);
        }
        
    

    
?>
