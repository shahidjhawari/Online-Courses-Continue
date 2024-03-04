<?php
require('connection.inc.php');
require('functions.inc.php');
$cat_res = mysqli_query($con, "select * from categories where status=1 order by categories DESC");
$cat_arr = array();
while ($row = mysqli_fetch_assoc($cat_res)) {
  $cat_arr[] = $row;
}

date_default_timezone_set('Asia/Karachi');

$script_name = $_SERVER['SCRIPT_NAME'];
$script_name_arr = explode('/', $script_name);
$mypage = $script_name_arr[count($script_name_arr) - 1];

$meta_title = "NAWAB ACADEMY";
$meta_desc = "NAWAB Web Development acdemy in Sargodha, Jhawarian, HTLM, CSS, JS, PHP, MYSQL, PYTHON online & classes courses";
$meta_keyword = "nawab, nawab academy, academy, shahid, shahid iqbal, shahid iqbal jhawari, mahar shahid iqbal jhawari, course, 
courses, nawab courses, nawab academy courses, nawab academy course, 
shahid iqbal course, nawab html course, nawab css course, 
nawab javascript course, nawab html, nawab css, nawab java script, 
jhawarian, jhawarian academy, jhawarian courses, jhawarian web development, 
web development, web development course, web development nawab, nawab web development, 
nawab ethical hacking, nawab app development, app development course, android app development course, 
nawab academy app development, jhawarian no 1 academy, sargodha no 1 academy, pakistan no 1 academy, html, 
css, java script, php, my sql, python,ethical hacking, html course, css course, java script course, php course, 
my sql course, python course, ethical hacking course,";
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
      <div class="container-fluid">
        <a href="index.php"><img src="img/logo_bg_remove.png" alt="NAWAB LOGO" title="NAWAB ACADEMY - Jhawarian, Sargodha, Punjab, Pakistan" width="50px"></a>
        <a class="navbar-brand" href="index.php" title="NAWAB ACADEMY - Jhawarian, Sargodha, Punjab, Pakistan"><b>NAWAB ACADEMY</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="index.php"><b>HOME</b></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="coming_soon.php"><b>COURSES</b></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="coming_soon.php"><b>PROJECTS</b></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="contactus.php"><b>CONTACT US</b></a>
            </li>
            <?php if (isset($_SESSION['USER_LOGIN'])) { ?>
              <li class="nav-item">
                <a class="nav-link" href="admision.php"><b>ADMISSION</b></a>
              </li>
            <?php } ?>
            <li class="nav-item">
              <?php if (isset($_SESSION['USER_LOGIN'])) {
                echo '<a href="logout.php" class="nav-link"><b>LOGOUT</b></a>';
              } else {
                echo '<a href="login.php" class="nav-link"><b>SIGNUP</b></a>';
              }
              ?>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div id="header2">
      <?php
      date_default_timezone_set('Asia/Karachi');
      ?>
      <p><?php echo date('d F, Y'); ?> | Welcome <?php if (isset($_SESSION['USER_LOGIN'])) { ?>
          <?php echo $_SESSION['USER_NAME'] ?>
        <?php
                                                  } else {
                                                    echo 'User';
                                                  } ?></p>
    </div>
    <div id="progress"></div>
  </header>
  <marquee id="news" behavior="" scrollamount="13">ADMISSION OPEN FROM 1 MAY 2024 - FOR ONLY JHAWARIAN`S STUDENTS - WEB DEVELOPMENT & WEB DESIGNING COURSES - ADMISSION NOW</marquee>
  <!--Header Section End-->