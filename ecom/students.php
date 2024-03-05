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
    <div class="row">
        <?php
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) { ?>
                <div class="col-md-4">
                    <div class="product-box">
                        <img src="img/1.jpg" alt="Product Image" class="product-img">
                        <h2><?php echo $row["full_name"] ?></h2>
                        <p>Father Name : <?php echo $row["father_name"] ?></p>
                        <p style="margin-top: -20px;">Course : <?php echo $row["select_option"] ?></p>
                        <p style="margin-top: -20px;">Date : <?php echo $row["created_at"] ?></p>
                    </div>
                </div>
        <?php }
        } else {
            echo "<tr><td colspan='8'>No records found</td></tr>";
        }
        ?>
    </div>
</div <?php require('footer.php'); ?>