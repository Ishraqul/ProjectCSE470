<?php
require_once('dbconnect.php');

if(isset($_POST['delete_btn']))
{
    $hotel_name = $_POST['delete_hotel_name'];

    $query = "DELETE FROM hotellist WHERE hotel_name='$hotel_name' ";
    $query_run = mysqli_query($conn, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Deleted";
        $_SESSION['status_code'] = "success";
        header('Location: show_hotellist.php'); 
    }
    else
    {
        $_SESSION['status'] = "Your Data is NOT DELETED";       
        $_SESSION['status_code'] = "error";
        header('Location: show_hotellist.php'); 
    }    
}
?>