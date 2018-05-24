
<!-- connect to database and post the posts  data into posts table -->
<!DOCTYPE html>
<html>
<head>
<title> Shopping Express </title>
<link rel="icon" type="image/jpg" href="shopping-cart.jpg" >
</head>
<body bgcolor="#FFFFF5">

<!--start the session and add the header -->
	<?php
  session_start();
  require_once('header.php');
  do_html_header();
  
	//check the connection to the mysql
	$conn = new mysqli("localhost","lamp","1","lamp_final_project");
	if($conn->connect_errno)
	{
	die("MYSQL connection failed:" + $conn->connect_error);
	}
   
   function getPostedValue($name)
   {
    	if(isset($_POST[$name]))
         {
            return $_POST[$name]; 
         }
	    else
         {
	    return "value not inserted by user";
         }
  }
    $title = getPostedValue('title');
    $description = getPostedValue('description');
    $category = getPostedValue('category');
    $sub_category = getPostedValue('subcategory');
    $country = getPostedValue('country');
    $city = getPostedValue('city');
    $price = getPostedValue('price');
    $email = getPostedValue('email');
    $confirmemail = getPostedValue('confirmemail');

    //insert the data into posts table
    $query_str = "INSERT INTO posts VALUE(NULL,'$title','$description','$category', '$sub_category', '$country','$city',$price,'$email',NULL,NULL,NULL,NULL)";
  
   
    if (TRUE !== $conn->query($query_str))
    {
	    printf("Error running query (errno= %d): %s\n", $conn->errno, $conn->error);
    }else{
        echo("data inserted in DB");
	  }
    $conn->close()
  	?>
    <a href="homepg.php">Back to Home Page"</a>
</body>
</html>

