<?php
require('connection.inc.php');
require('functions.inc.php');
$cat_res = mysqli_query($con, "select * from categories where status=1 order by categories DESC");
$cat_arr = array();
while ($row = mysqli_fetch_assoc($cat_res)) {
  $cat_arr[] = $row;
}


$script_name = $_SERVER['SCRIPT_NAME'];
$script_name_arr = explode('/', $script_name);
$mypage = $script_name_arr[count($script_name_arr) - 1];

$meta_title = "My Ecom Website";
$meta_desc = "My Ecom Website";
$meta_keyword = "My Ecom Website";
if ($mypage == 'product.php') {
  $product_id = get_safe_value($con, $_GET['id']);
  $product_meta = mysqli_fetch_assoc(mysqli_query($con, "select * from product where id='$product_id'"));
  $meta_title = $product_meta['meta_title'];
  $meta_desc = $product_meta['meta_desc'];
  $meta_keyword = $product_meta['meta_keyword'];
}
if ($mypage == 'contact.php') {
  $meta_title = 'Contact Us';
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <!--All Meta Tags Here-->
  <meta charset="UTF-8">
  <meta name="keyword" content="<?php echo $meta_keyword ?>">
  <meta name="discription" content="<?php echo $meta_desc ?>">
  <meta name="author" content="MAHAR SHAHID IQBAL JHAWARI">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $meta_title ?></title>

  <!--Bootstrap files Here-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

  <!--Own files Here-->
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="css/responsive.css">
  <link rel="icon" href="img/logo_bg_remove.png">
</head>

<body>

  <!--Header Section Start-->
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-warning">
      <div class="container container-css">
        <a href="index.php"><img src="img/logo_bg_remove.png" alt="NAWAB LOGO" title="NAWAB ACADEMY - Jhawarian, Sargodha, Punjab, Pakistan" width="50px"></a>
        <a class="navbar-brand" href="index.php" title="NAWAB ACADEMY - Jhawarian, Sargodha, Punjab, Pakistan"><b>NAWAB ACADEMY</b></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item active">
              <a class="nav-link" href="index.php"><b>HOME</b></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><b>COURSES</b></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="coming_soon.php"><b>PROJECTS</b></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login.php"><b>SIGN UP</b></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contactus.php"><b>CONTACT US</b></a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div id="header2">
      <p>12.23.2024</p>
    </div>
    <div id="progress"></div>
  </header>
  <!--Header Section End-->