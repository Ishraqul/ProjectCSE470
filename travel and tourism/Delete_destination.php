<?php
require_once('dbconnect.php');

if(isset($_POST['delete_btn']))
{
    $city_name = $_POST['delete_city_name'];

    $query = "DELETE FROM destinationlist WHERE city_name='$city_name' ";
    $query_run = mysqli_query($conn, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Deleted";
        $_SESSION['status_code'] = "success";
        header('Location: show_destinationlist.php'); 
    }
    else
    {
        $_SESSION['status'] = "Your Data is NOT DELETED";       
        $_SESSION['status_code'] = "error";
        header('Location: show_destinationlist.php'); 
    }    
}
?>