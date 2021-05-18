<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link href="css/style.css" rel="stylesheet"/> 

  
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Tourism and Travel</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
        </li>
       
        </li>
        <li class="nav-item">
          <a class="nav-link" href="booking.php">Booking</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="destination.php">Destination</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="show_airlines.php">Airlines</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="show_hotels.php">Hotels</a>
        </li>
        
         
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<div class="py-5">
    <h2 class="text-center">Add New Hotel</h2>
  </div>

<div class="w-50 m-auto">
  <form action="insert_hotelinfo_connection.php" method="post">
    <div class= "form-group">
    </div>
    <div class= "form-group">
      <label > Hotel Name</label>
      <input type="text" name="hotel_name" autocomplete="off" class="form-control">
    </div>
    <div class= "form-group">
      <label >Hotel Location</label>
      <input type="text" name="hotel_location" autocomplete="off" class="form-control">
    </div>
    <div class= "form-group">
      <label >Hotel E-mail</label>
      <input type="text" name="hotel_email" autocomplete="off" class="form-control">
    </div>
       <div class= "form-group">
      <label >Hotel Phonenumber</label>
      <input type="text" name="hotel_phonenumber" autocomplete="off" class="form-control">
    </div>
    
    
   
    <button type="submit" class="btn btn-success">Submit</button>

