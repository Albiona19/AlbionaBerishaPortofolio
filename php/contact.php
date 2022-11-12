<?php 
    require_once("./config/dbconfig.php");
    if((isset($_POST['fullname'])&& $_POST['fullname'] !='') && (isset($_POST['email'])&& $_POST['email'] !=''))
    {    
        $fullname = $conn->real_escape_string($_POST['fullname']);
        $email = $conn->real_escape_string($_POST['email']);
        $message = $conn->real_escape_string($_POST['project']);
        $sql="INSERT INTO contact (name, email, message) VALUES ('".$fullname."','".$email."', '".$message."')";
        
        if(!$result = $conn->query($sql)){
            die('There was an error running the query [' . $conn->error . ']');
        } else {
            header("Location: ./pages/contact-success.html");
            // header("Location: ../");
        }
    } else {
        echo "Please fill Name and Email";
    }
?>