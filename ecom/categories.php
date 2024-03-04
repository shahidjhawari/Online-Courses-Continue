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
        <!-- Search Tag Start -->
        <div class="form html-tags-search">
            <div class="searchbar">
                <input class="search_input" type="text" id="searchInput" placeholder="Search tags...">
            </div>
        </div>
        <!-- Search Tag End -->
        <div class="list-group all-html-tags">
            <?php
            foreach ($get_product as $list) {
            ?>
                <code>
                    <a href="product.php?id=<?php echo $list['id']?>" class="list-group-item list-group-item-action tag-css"><span><</span><span class="html-tag"><?php echo $list['name'] ?></span><span>></span> <?php echo $list['price'] ?></a>
                </code>
            <?php } ?>
        </div>
    </div>
<?php } else {
    echo "Data not found";
} ?>
<!--HTML All Tags Section End-->

<script>
    $(document).ready(function () {
            // Function to filter the tags based on the search input
            function filterTags() {
                var searchInput = $('#searchInput').val().toLowerCase();

                $('.list-group-item').each(function () {
                    var tagText = $(this).text().toLowerCase();
                    if (tagText.includes(searchInput)) {
                        $(this).show();
                    } else {
                        $(this).hide();
                    }
                });
            }

            // Trigger the filterTags function on keyup event in the search input
            $('#searchInput').on('keyup', filterTags);
        });
</script>

<?php require('footer.php'); ?>