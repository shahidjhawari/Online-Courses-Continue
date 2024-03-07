<?php
require('top.php');
if (isset($_GET['id'])) {
    $product_id = mysqli_real_escape_string($con, $_GET['id']);
    if ($product_id > 0) {
        $get_product = get_product($con, '', '', $product_id);
    } else {
?>
        <script>
            window.location.href = 'index.php';
        </script>
    <?php
    }
} else {
    ?>
    <script>
        window.location.href = 'index.php';
    </script>
<?php
}
?>

<!-- YouTube Video Section start -->
<div class="container yt-video-html-box">
    <div class="video-wrapper">
        <?php echo $get_product['0']['short_desc'] ?>
    </div>
</div>
<!-- YouTube Video Section start -->


<!-- all course add heading start -->
<div class="domain tag-heading">
    <div class="titlepage text_align_center">
        <h2><?php echo $get_product['0']['name'] ?> TAG <span class="blue_light">EXAMPLE</span></h2>
    </div>
</div>
<!-- all course add heading start -->

<!--Tag Section Start-->
<div class="container">
    <div id="carouselExample" class="carousel slide inner-css">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="<?php echo PRODUCT_IMAGE_SITE_PATH . $get_product['0']['image']; ?>" class="d-block w-100" alt="a tag html">
            </div>
        </div>
    </div>
</div>
<div class="container d-flex align-items-center justify-content-center download-btn">
    <a href="<?php echo PRODUCT_IMAGE_SITE_PATH . $get_product['0']['image']; ?>" download="<?php echo $get_product['0']['image'] . ' NAWAB ACADEMY'; ?>" class="btn btn-danger">Download</a>
</div>
<!--Tag Section End-->


<?php require('footer.php'); ?>