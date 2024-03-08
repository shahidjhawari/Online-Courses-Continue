<?php require('top.php'); ?>

<!-- all course add heading start -->
<div class="domain">
  <div class="titlepage text_align_center">
    <h2 style="margin-top: 30px;">ALL COURSES <span class="blue_light">HERE</span></h2>
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
            <a href="categories.php?id=<?php echo $list['id']?>"><img src="img/course-bg.webp" alt="Product Image" class="product-img"></a>
            <div class="text-overlay">
              <h2><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a></h2>
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

<?php require('footer.php'); ?>