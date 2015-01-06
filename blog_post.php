<?php
$host="localhost";
$user="root";
$pass="root";
$conn=mysql_connect("$host","$user","$pass");
mysql_select_db("apti",$conn);
$sql="insert into blogs(name,email,title,description) values ('$_POST[name]','$_POST[email]','$_POST[title]','$_POST[description]')";
if(!mysql_query($sql,$conn))
{
die ('error:'.mysql_error());
}

header('Location:blogs.php');
mysql_close($conn)

?>