<?php
session_start();

$x=$_POST['vid'];

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

$sql="select * from videos where vid='$x'";
$result = mysql_query($sql) or die("cannot execute query");

 $count = mysql_num_rows($result);
$row = mysql_fetch_array($result);

	$vname = $row['name'];
	$category = $row['cid'];

?>

<?php
include "head2.html";
?>

    <section id="about">
        <div class="container">
        
        
 				<div class="row">
                <div class="col-lg-12 text-center">
                    <h2><?php echo $vname;?></h2>
                    <br><br><br>
                </div>
            </div>
            
            <div class="row">
                <div><center>
<video id="custom_video_play" width="900" height="" controls="controls">>
<source src="videos/<?php echo $vname ?>.mp4" type="video/mp4"> Browser Not Supporting
</video></center>
</div>

            </div>
           </div>
        
    </section>

<footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>Anjuman-I-Islam Kalsekar Technical Campus 
                            <br>New-Panvel,410206</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <h5><a href="http://aiktc.org/pc">Website</h5>
                        <ul class="list-inline">
                            <li><a href="http://www.facebook.com/aiktcprogrammersclub" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li><a href="http://aiktcprogrammersclub.blogspot.in" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li><a href="http://www.twitter.com/aiktcpc" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            </ul>
                    </div>
                    <?php

			include "foot.html";
			?>
