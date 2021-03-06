<!-- browse post page-->
<!DOCTYPE html>
<html>
  <head>
   <link rel="icon" type="image/jpg" href="shopping-cart.jpg" >
  <title>
     Shopping Express 
  </title>
    
  </head>
  <body bgcolor="#FFFFF5">

<!--start a session and add a header -->
  <?php
  session_start();
  require_once('header.php');
  do_html_header();
  ?>  
  <?php
 
    $rows = array();

    //search for title  sub_category description email  city country 
    function generateQuery()
    {
      $query_str = "SELECT * FROM posts;";
      if (isset($_POST['search'])) {
        $search_str = $_POST['search'];
        $query_str = "SELECT * FROM posts WHERE title LIKE '%$search_str%' OR sub_category LIKE '%$search_str%' OR description LIKE '%$search_str%' OR email LIKE '%$search_str%' OR city LIKE '$search_str%' OR country LIKE '%$search_str%' ;";
        return $query_str;
        
      }
     
      //post from given sub-cat
      if (isset($_GET['sub_category'])) {
        $sub_cat = $_GET['sub_category'];
        $query_str = "SELECT * FROM posts WHERE sub_category = '$sub_cat';";
        return $query_str;

      } 
 
      //post from country
      if (isset($_GET['country'])) {
        $country = $_GET['country'];
        $query_str = "SELECT * FROM posts WHERE country = '$country';";
        return $query_str;
      } 
      //post from given city
      if (isset($_GET['city'])) {
        $city = $_GET['city'];
        $query_str = "SELECT * FROM posts WHERE city = '$city';";
        return $query_str;
      }
      return $query_str;
    }
//run the query and fetch the data from result
    function runQuery($query_str)
    {
      global $rows;
      global $conn;
      if ($result = $conn->query($query_str))
      {
        while ($row = $result->fetch_assoc())
        {
          $rows[] = $row;
        }
       
        $result->free();
      } else {
        $error = sprintf("Error running query (errno= %d): %s\n", $conn->errno, $conn->error);
        die($error);
      }
    }
//show the result in table format
    function showRows()
    {
    global $rows;

    echo "<br/><br/>";
    echo "<table align='center' border=10 >";
    echo "<tr style='font-weight:bold; background-color:#f5ecdb;'> <td>PostId</td> <td>Title</td> <td>Description</td> ";
    echo "<td>Category</td> <td>SubCategory</td> <td>Country</td> <td>City</td> <td>Cost</td> <td>Email</td></tr>";
      foreach ($rows as &$row) {
        printf("<tr><td>%u</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%s</td> <td>%u</td> <td>%s</td></tr>",
              $row['post_id'], $row['title'], $row['description'],
              $row['category'], $row['sub_category'], $row['country'], $row['city'],
              $row['price'], $row['email']);
      }
      echo "</table>";
      echo " <a href='homepg.php'>back to home page</a>";
    }

    $conn = new mysqli("localhost","lamp","1","lamp_final_project");
    if($conn->connect_errno)  
    {
      die("MYSQL connection failed:" + $conn->connect_error);
    }
 
    $query_str = generateQuery();
    runQuery($query_str);
    showRows();

    $conn->close()
       
  ?>     
 
 </body>
  

</html>

