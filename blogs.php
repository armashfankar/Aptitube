<?php include "head2.html"; ?>
  <section id="about">
     
        <div class="container">
   
      <div class="form-group">
                              <a href="post.php">  <button type="submit" class="btn btn-success btn-lg">Post Blog</button></a>
                            </div> 
                   
       
      <?php
session_start();


$host="localhost";
$user="root";
$pass="root";
$con = mysql_connect("$host","$user","$pass");

mysql_select_db("apti", $con);
if (!$con)
  {

echo "Error in DBConnect() = " . mssql_get_last_message();
  die('Could not connect: ' . mysql_error());

  }

$sql="select * from blogs ORDER BY id DESC ";
$result = mysql_query($sql) or die("cannot execute query");

 $count = mysql_num_rows($result);
while ($row = mysql_fetch_array($result)){
	$name = $row['name'];
	$email = $row['email'];
    $title =$row['title'];
    $desc =$row['description'];
    $tags =$row['tags'];
    



?>
            <br>
            <hr class="star-primary"/>
            
            <div class="row" style="background-color: aliceblue">
    <br/>

    
    <div class="col-md-12 col-sm-9">
        <h3>
           <?php echo $title; ?> 
            <small style="font-family:courier,'new courier';" class="text-muted pull-right"><u><?php echo $email; ?></u></small>
            <br/>
            <h4><span class="label label-default pull-right"><font color="#F8E0E6"><?php echo $name; ?></font></span></h4>
            <br/>
            <br/>
        </h3>

        <div class="row">
          <?php echo $desc; ?></div>
        <br/>
        <br/>
    </div>
</div>
            
            
 				
            <?php } ?>
        </div>
        
    </section>



<?php include "foot.html"; ?>