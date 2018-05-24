<!DOCTYPE html>
<html>
<head>
<title>Shopping Express</title>
</head>
<body>
  
  <?php
  require_once('header.php');
  do_html_header();
  ?>

  <?php
//check user is set for a session,free session variable. if the session_destory is true  user successfully logged out
  session_start();
  if (isset($_SESSION['username'])) {
  $old_user=$_SESSION['username'];
  unset($_SESSION['username']);
  if (session_destroy()) {
    echo "User '$old_user' successfully logged out.";
  }
}
?>
<br/>
<a href="homepg.php">Back to Home Page</a>

</body>
</html>

