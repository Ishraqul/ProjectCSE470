<?php
$conn= mysqli_connect('localhost', 'root');

if($conn){
	echo "Connection successful";
}
else{
	echo "No connection";
}
mysqli_select_db($conn, 'tourism and travel');
$hotel_name= $_POST['hotel_name'];
$hotel_location= $_POST['hotel_location'];
$hotel_email= $_POST['hotel_email'];
$hotel_phonenumber= $_POST['hotel_phonenumber'];


$query = " insert into hotellist (hotel_name, hotel_location, hotel_email, hotel_phonenumber)
values('$hotel_name', '$hotel_location', '$hotel_email', '$hotel_phonenumber')";

echo"$query";

mysqli_query($conn, $query);

header('location: show_hotellist.php');
?>
