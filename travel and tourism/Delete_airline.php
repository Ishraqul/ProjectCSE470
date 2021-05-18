<?php
require_once('dbconnect.php');

if(isset($_POST['delete_btn']))
{
    $airline_name = $_POST['delete_airline_name'];

    $query = "DELETE FROM airlineslist WHERE airline_name='$airline_name' ";
    $query_run = mysqli_query($conn, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Deleted";
        $_SESSION['status_code'] = "success";
        header('Location: show_airlinelist.php'); 
    }
    else
    {
        $_SESSION['status'] = "Your Data is NOT DELETED";       
        $_SESSION['status_code'] = "error";
        header('Location: show_airlinelist.php'); 
    }    
}
?>