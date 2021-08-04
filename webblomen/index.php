<?php

session_status();
//include("layout/nav.php");

include ("lib/Db.php");
$db = new Db();
$conn =$db->getConnection();
?>



<?php
session_status();
//include("layout/footer.php");
?>