<!DOCTYPE html> 
<html>
<head>
<title>jQuery Mobile Web App</title>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link rel="stylesheet" type="text/css" href="jquery/jquery.mobile-1.4.5.min.css"/>
<link href="styles/custom.css" rel="stylesheet" type="text/css"/>
<script src="jquery/jquery-1.12.3.min.js" type="text/javascript"></script>
<script src="jquery/jquery.mobile-1.4.5.min.js" type="text/javascript"></script>
</head>

<body> 

<div id="main" data-role="page" data-theme="b">
  This is a Test <br>

 <?php
  $servername = "amwa-db.database.windows.net";
  $username = "khart";
  $password = "1Hunglow";

  // Create connection
  $conn = new mysqli($servername, $username, $password);

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
echo "Connected successfully";
?> 

</div>

</body>

</html>