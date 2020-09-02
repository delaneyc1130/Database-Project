<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>Final Project PHP-MySQL Program</title>
  </head>

  <body bgcolor="white">


  <hr>

<?php

$state = $_POST['lastName'];

$state = mysqli_real_escape_string($conn, $state);
// this is a small attempt to avoid SQL injection
// better to use prepared statements

$query = "SELECT firstName, lastName, street, city, state, zipcode 
          FROM customer c JOIN address_of_customer a 
          ON c.customer_id = a.customer_id
          WHERE lastName = ";
          
$query = $query."'".$state."";

?>

<p>
The query:
<p>
<?php
print $query;
?>

<hr>
<p>
Result of query:
<p>

<?php
$result = mysqli_query($conn, $query)
or die(mysqli_error($conn));

print "<pre>";
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "\n";
    print "$row[firstName]  $row[lastName] $row[street] $row[city] $row[state] $row[zipcode]";
  }
print "</pre>";

mysqli_free_result($result);

mysqli_close($conn);

?>

<p>
<hr>

<p>
<a href="customer_info.txt" >Contents</a>
of the PHP program that created this page.

</body>
</html>
