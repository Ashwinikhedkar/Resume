<!--help page -->
<!DOCTYPE html>
<html>
<head>
<title> Shopping Express </title>
<link rel="icon" type="image/jpg" href="shopping-cart.jpg" >
</head>

<body bgcolor="#FFFFF5" >
<!-- start a session-->
      <?php
        session_start();
        require_once('header.php');
        do_html_header();
      ?>
<div style="text-align:justify;text-size:4;padding:10px;align:center;width:60%;border:3px solid #8AC007;margin:auto;background-color:#f5ecdb;">
  <center><h3 style="color:blue">Help</h3></center>
  <p >
      <strong> <center>Welcome to my website.</center></strong>
      
    <p align="center">
      
      For any help and support please contact-<br/>
       Name: Ashwini Gadale.<br/>
      Email Id: ashwini@gmail.com<br/>
         Phone: +1 987-653-2178.<br/>
  <!-- <INPUT TYPE="button" VALUE="Back" onClick="history.go(-1)";> -->
     
     <a href="homepg.php">back to home page</a>
   </p>
</div>
</body>
</html>

