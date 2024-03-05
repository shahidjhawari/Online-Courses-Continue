<?php require('top.php'); ?>

<!--Banner Section Start-->
<div id="carouselExample" class="carousel slide inner-css">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/banner1.webp" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/ai-banner2.webp" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="img/banner1.webp" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<!--Banner Section End-->

<!-- Why We are start -->
<div class="container-fluid py-1">
  <div class="container py-1">
    <div class="row align-items-center">
      <div class="col-lg-3">
        <img class="img-fluid rounded mb-4 mb-lg-0" src="img/why.webp" alt="" width="100%" height="100%">
      </div>
      <div class="col-lg-9">
        <div class="text-left mb-4">
          <h5 class="text-primary text-uppercase mb-3" style="letter-spacing: 1px;">WHY WE ARE</h5>
          <h1>Jhawarian`s No. #1 Academy</h1>
        </div>
        <p>Jhawarian's number one academy teaching you website designing and website development as well as android
          app development, this academy is very famous for its quality and best quality of education, you can check
          our services, Thanks!</p>
      </div>
    </div>
  </div>
</div>
<!-- Why We are end -->

<!-- all course add heading start -->
<div class="domain">
  <div class="titlepage text_align_center">
    <h2>ALL COURSES <span class="blue_light">HERE</span></h2>
  </div>
</div>
<!-- all course add heading start -->

<!--Categories Section Start-->
<?php
foreach ($cat_arr as $list) {
?>
  <section class="about_section layout_padding">
    <div class="container  ">
      <div class="heading_container heading_center">
        <h2><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a></h2>
        <p>Let's understand the fundamental and basic concept of HTML</p>
      </div>
    </div>
  </section>
<?php
}
?>
<!--Categories Section End-->

<?php require('footer.php'); ?>