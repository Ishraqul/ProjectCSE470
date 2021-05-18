<?php
$conn= mysqli_connect('localhost', 'root');
if($conn){
	echo "Connection Successful";
}
else{
	echo "No Connection";
}

mysqli_select_db($conn, 'tourism and travel');
$booked_destination= $_POST['booked_destination'];
$user_name= $_POST['user_name'];
$booking_date= $_POST['booking_date'];
$booked_airline= $_POST['booked_airline'];
$booked_hotel= $_POST['booked_hotel'];

$query= "insert into bookinginfo (booked_destination, user_name, booking_date, booked_airline, booked_hotel) values('$booked_destination', '$user_name', '$booking_date', '$booked_airline', '$booked_hotel')";

$query_run = mysqli_query($conn, $query);

if($query_run){
	mysqli_query($conn, "DELETE FROM destinationlist WHERE city_name= '$booked_destination'");
	header('location: index.php');
}
else{
	echo "Incorrect Information";
}
?>
