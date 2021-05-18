<?php
$conn= mysqli_connect('localhost', 'root');

if($conn){
	echo "Connection successful";
}
else{
	echo "No connection";
}
mysqli_select_db($conn, 'tourism and travel');
$country_name= $_POST['country_name'];
$city_name= $_POST['city_name'];
$zip_code= $_POST['zip_code'];


$query = " insert into destinationlist (country_name, city_name, zip_code)
values('$country_name', '$city_name', '$zip_code')";

echo"$query";

mysqli_query($conn, $query);

header('location: show_destinationlist.php');
?>
