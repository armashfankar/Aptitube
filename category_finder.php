

<?php
include "head2.html";
?>

    <section id="about">
        <div class="container">
        
      <?php
session_start();

$x=$_POST['cid'];

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

$sql="select * from videos where cid='$x'";
$result = mysql_query($sql) or die("cannot execute query");

 $count = mysql_num_rows($result);
while ($row = mysql_fetch_array($result)){
	$vname = $row['name'];
	$category = $row['cid'];
    $folder=$row['folder'];
     $vid=$row['vid'];
?><br>
 				<div class="row">
                <div class="col-lg-12 ">
                    <hr class="star-primary">
                        
                    <h4><?php echo $vname;?></h4>
                    
                </div>
            </div>
            <br>
            <div class="well" style="background-color: aliceblue ">
                <div>
                    
                   <div align="" class="embed-responsive embed-responsive-16by9">
    <video  class="embed-responsive-item" width="200" height="350">
        <source src="videos/<?php echo $folder?>/<?php echo $vname ?>.mp4" type=video/mp4>
    </video>
</div>
                    

                    <br>
     <div class="form-group col-sm-18">
         <form name="video view" method="post" action="video_view.php">
                <button type="submit" class="btn btn-success btn-lg">Play</button>
             <input type="hidden" value="<?php echo $vid ?>" name="vid">
                          
        </form>
             </div>
               
</div>

            </div>

<?php } ?>
        </div>
        
    </section>


                    <?php

			include "foot.html";
			?>
