<?php
$conn= mysqli_connect('localhost', 'root');

if($conn){
	echo "Connection successful";
}
else{
	echo "No connection";
}
mysqli_select_db($conn, 'tourism and travel');
$airline_name= $_POST['airline_name'];
$airline_class= $_POST['airline_class'];
$airline_type= $_POST['airline_type'];
$number_of_seat= $_POST['number_of_seat'];

$query = " insert into airlineslist (airline_name, airline_class, airline_type, number_of_seat)
values('$airline_name', '$airline_class', '$airline_type', '$number_of_seat')";

echo"$query";

mysqli_query($conn, $query);

header('location: show_airlinelist.php');
?>
