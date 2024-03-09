<?php require('top.php'); ?>

<!-- Banner Section Start -->
<div id="carouselExample" class="carousel slide inner-css" data-bs-ride="carousel">
  <div class="carousel-inner">
    <?php
    $active = true;
    while ($rowBanner = mysqli_fetch_assoc($resBanner)) {
    ?>
      <div class="carousel-item <?php echo $active ? 'active' : ''; ?>">
        <img src="<?php echo BANNER_SITE_PATH . $rowBanner['image']; ?>" class="d-block w-100 slider-banner-img" alt="...">
      </div>
    <?php
      $active = false;
    }
    ?>
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
<!-- Banner Section End -->


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
          <div class="g-ytsubscribe" data-channelid="UC0ab8mhKDmqQqNur4c9zg7Q" data-layout="full" data-count="default"></div>
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
<div class="container">
  <div class="row">
    <?php
    foreach ($cat_arr as $list) {
    ?>
      <div class="col-md-4">
        <div class="product-box crs-box">
          <div class="image-wrapper">
            <a href="categories.php?id=<?php echo $list['id'] ?>"><img src="img/course-bg.webp" alt="Product Image" class="product-img"></a>
            <div class="text-overlay">
              <h2><a href="categories.php?id=<?php echo $list['id'] ?>"><?php echo $list['categories'] ?></a></h2>
            </div>
          </div>
        </div>
      </div>
    <?php
    }
    ?>
  </div>
</div>
<!--Categories Section End-->

<!-- all course add heading start -->
<div class="domain">
  <div class="titlepage text_align_center">
    <h2>JAVASCRIPT <span class="blue_light">PROJECTS</span></h2>
  </div>
</div>
<!-- all course add heading start -->

<!--YouTube Video Section Start-->
<div class="container">
  <div class="row">
    <div class="col-md-6">
      <div class="video-container">
        <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/7MSrQ6_nZuc?si=ScZFxkHPGRE7EMse" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
      </div>
    </div>
    <div class="col-md-6 js-yotube-para">
      <h2>JavaScript Game</h2>
      <p>"Hammer vs Rabbit" is a beginner-friendly JavaScript game project where players control a hammer to fend off incoming rabbits. This tutorial, presented in Urdu/Hindi, guides beginners through creating this interactive game using JavaScript.</p>
    </div>
  </div>
</div>
<!--YouTube Video Section End-->

<script>
  $(document).ready(function() {
    $('#carouselExample').carousel({
      interval: 3000
    });
  });
</script>

<?php require('footer.php'); ?>