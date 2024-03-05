<?php require('top.inc.php');
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$database = "nawab8";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query database to fetch admissions data
$sql = "SELECT * FROM admissions";
$result = $conn->query($sql);
?>

<div class="container">
    <h2>Admissions Data</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Full Name</th>
                    <th>Father Name</th>
                    <th>CNIC</th>
                    <th>Phone Number</th>
                    <th>Email</th>
                    <th>Select Option</th>
                    <th>Image</th>
                    <th>Created At</th>
                </tr>
            </thead>
            <tbody>
                <?php
                if ($result->num_rows > 0) {
                    while($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>".$row["id"]."</td>";
                        echo "<td>".$row["full_name"]."</td>";
                        echo "<td>".$row["father_name"]."</td>";
                        echo "<td>".$row["cnic"]."</td>";
                        echo "<td>".$row["phone_number"]."</td>";
                        echo "<td>".$row["email"]."</td>";
                        echo "<td>".$row["select_option"]."</td>";
                        echo "<td><img width='50px' src='".PRODUCT_IMAGE_SITE_PATH . $row["image_path"]."'></td>";
                        echo "<td>".$row["created_at"]."</td>";
                        echo "</tr>";
                    }
                } else {
                    echo "<tr><td colspan='8'>No records found</td></tr>";
                }
                ?>
            </tbody>
        </table>
    </div>
</div>


<?php require('footer.inc.php'); ?>