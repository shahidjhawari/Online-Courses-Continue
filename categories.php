<?php
require('top.php');
if (isset($_GET['id']) && $_GET['id'] != '') {
    $cat_id = mysqli_real_escape_string($con, $_GET['id']);
    if ($cat_id > 0) {
        $get_product = get_product($con, '', $cat_id);
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

<!--HTML All Tags Section Start-->
<?php if (count($get_product) > 0) { ?>
    <div class="container">
        <div class="list-group all-html-tags">
            <?php
            foreach ($get_product as $list) {
            ?>
                <code>
                    <a href="#" class="list-group-item list-group-item-action tag-css"><span>
                            <<span class="html-tag"><?php echo $list['name'] ?>
                        </span><span>></span> <?php echo $list['price'] ?></a>
                </code>
            <?php } ?>
        </div>
    </div>
<?php } else {
    echo "Data not found";
} ?>
<!--HTML All Tags Section End-->

<?php require('footer.php'); ?>