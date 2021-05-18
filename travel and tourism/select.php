<?php
require_once("DBconnect.php");
if(isset($_POST['select_btn']))
{
    $city_name= $_POST['select_city_name'];

    $query = "DELETE FROM destinationlist WHERE city_name='$city_name' ";

    $query_run = mysqli_query($conn, $query);

    if($query_run)
    {
        $_SESSION['status'] = "Your Data is Selected";
        $_SESSION['status_code'] = "success";
        header('Location: select_destination.php'); 
        
    else
    {
        $_SESSION['status'] = "Your Data is NOT Selected";       
        $_SESSION['status_code'] = "error";
        header('Location: select_destination.php');
        
    }    
}
?>)
