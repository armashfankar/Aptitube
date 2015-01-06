

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
?><br>
 				<div class="row">
                <div class="col-lg-12 ">
                    <hr class="star-primary">
                        
                    <h4><?php echo $vname;?></h4>
                    
                </div>
            </div>
            <br>
            <div class="well">
                <div><center>
<video id="custom_video_play" width="750" height="350" controls="controls">>
<source src="videos/<?php echo $folder ?>/<?php echo $vname ?>.mp4" type="video/mp4"> Browser Not Supporting
</video><br></center>
</div>

            </div>
<?php } ?>
        </div>
        
    </section>


                    <?php

			include "foot.html";
			?>
