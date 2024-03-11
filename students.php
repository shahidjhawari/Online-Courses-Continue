<?php
require('top.php');

$sql = "SELECT * FROM admissions";
$result = $con->query($sql);
?>

<style>
    .product-box {
        border: 1px solid #ddd;
        padding: 20px;
        margin-bottom: 20px;
    }

    .product-img {
        max-width: 400px;
        max-height: 400px;
    }

    @media (max-width: 576px) {
        .product-box {
            padding: 10px;
        }

        .product-img {
            max-width: 300px;
            max-height: 300px;
        }
    }
</style>

<div class="container">
    <h2 style="margin-top: 20px;">Students Records</h2>
    <div class="row">
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) { ?>
                <div class="col-md-4">
                    <div class="product-box">
                        <img width="400px" src="<?php echo PRODUCT_IMAGE_SITE_PATH . $row['image_path']; ?>" alt="Product Image" class="product-img">
                        <h2><?php echo $row["full_name"] ?></h2>
                        <p>Father Name : <?php echo $row["father_name"] ?></p>
                        <p style="margin-top: -20px;">Course : <?php echo $row["select_option"] ?></p>
                        <p style="margin-top: -20px;">Date : <?php echo $row["created_at"] ?></p>
                        <p style="margin-top: -20px;">Status : <?php echo $row["status"] . "<br>" . $row["fee"] ?></p>
                        <?php if (!empty($row['certificate'])) { ?>
                            <a href="<?php echo CERTIFICATE_FILE_SITE_PATH . $row['certificate']; ?>" download class="btn btn-warning btn-sm">Download Certificate</a>
                        <?php } ?>
                        <?php if (!empty($row['fee'])) { ?>
                            <button onclick="fee()" class="btn btn-danger btn-sm">Last Fee Pending</button><br>
                            <small>Pay fee to get certificate</small>
                        <?php } ?>
                    </div>
                </div>
        <?php }
        } else {
            echo "<tr><td colspan='8'>No records found</td></tr>";
        }
        ?>
    </div>
</div>

<script>
    function fee() {
        alert("Please pay fee to get certificate!")
    }
</script>
<?php require('footer.php'); ?>