<!-- creates a common header for each page -->
<?php
function do_html_header() {
?>
    <table align="center" >
        <tr>
         <td rowspan=3><img src="shopping-cart.jpg" alt="cart" height="80" width="80" align="left"><td>
         <td colspan=2><h1> Shopping Express</h1>
        </tr>
        <tr colspan=3><td></td><td colspan=2><hr/></td><td></td></tr>
        <tr>
          <td></td>
          <td>
           <a href="newpost.php" >New Post |</a>
           <a href="help.php" > Help </a>
          </td>
          <td style="text-align:float-right">

<!--check for user is set for a session if yes then echo username else login to start a session -->
          <?php
            if (isset($_SESSION['username'])) {
              echo $_SESSION['username'];
          ?>
              <a href ="logout.php"> Logout</a>

          <?php
            } else {
          ?>
              <a href="login.php"> Login</a>
          <?php
            }
          ?>
         </td>
        </tr>
      </table>
      <hr/>
<?php
}
?>

