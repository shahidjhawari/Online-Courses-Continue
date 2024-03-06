<?php
session_start();
$con=mysqli_connect("sql204.infinityfree.com","if0_35562447","o3kuMy0BlkrjV","if0_35562447_nawab");
define('SERVER_PATH',$_SERVER['DOCUMENT_ROOT'].'/');
define('SITE_PATH','https://nawab.website/');

define('PRODUCT_IMAGE_SERVER_PATH',SERVER_PATH.'media/product/');
define('PRODUCT_IMAGE_SITE_PATH',SITE_PATH.'media/product/');
?>