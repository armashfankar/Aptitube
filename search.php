<?php 
include "head2.html"; 
?>

<section id="about">
        <div class="container">
        
    
<?php
mysql_connect ("localhost", "root","root")  or die (mysql_error());
mysql_select_db ("apti");
 
$term = $_POST['query'];
 
$sql = mysql_query("SELECT * FROM videos WHERE name LIKE '%$term%'");

 $count = mysql_num_rows($sql);


while ($row = mysql_fetch_array($sql)){
$vname=$row['name'];
$folder=$row['folder'];
$vid=$row['vid'];


?>
	<div class="row">
                <div class="col-lg-12 ">
                    <hr class="star-primary">
                        
                    <h4><?php echo $vname;?></h4>
                    
                </div>
            </div>
            <br>
            <div class="well">
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


<?php include "foot.html" ?>