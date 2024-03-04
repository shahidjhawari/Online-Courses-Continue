<?php 
require('top.php');
require('connection.inc.php');

// Escape user inputs for security
$full_name = $con->real_escape_string($_POST['fullName']);
$father_name = $con->real_escape_string($_POST['fatherName']);
$cnic = $con->real_escape_string($_POST['cnic']);
$phone_number = $con->real_escape_string($_POST['phoneNumber']);
$email = $conn->real_escape_string($_POST['email']);
$select_option = $con->real_escape_string($_POST['select1']);

// Insert data into database
$sql = "INSERT INTO admissions (full_name, father_name, cnic, phone_number, email, select_option)
        VALUES ('$full_name', '$father_name', '$cnic', '$phone_number', '$email', '$select_option')";

if ($con->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $con->error;
}

// Close connection
$con->close();
?>

<style>
    .box {
        margin-top: 40px;
        margin-bottom: 40px;
    }
</style>

<div class="container box">
  <h2>Admission Form</h2>
  <form action="process_form.php" method="post">
    <div class="form-group">
        <label for="fullName">Full Name:</label>
        <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Enter Full Name" required>
    </div>
    <div class="form-group">
        <label for="fatherName">Father Name:</label>
        <input type="text" class="form-control" id="fatherName" name="fatherName" placeholder="Enter Father Name" required>
    </div>
    <div class="form-group">
        <label for="cnic">CNIC:</label>
        <input type="text" class="form-control" id="cnic" name="cnic" placeholder="Enter CNIC" required>
    </div>
    <div class="form-group">
        <label for="phoneNumber">Phone Number:</label>
        <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Enter Phone Number" required>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
    </div>
    <div class="form-group">
        <label for="select1">Select Option 1:</label>
        <select class="form-control" id="select1" name="select1" required>
            <option value="">Choose...</option>
            <option value="option1">Option 1</option>
            <option value="option2">Option 2</option>
            <option value="option3">Option 3</option>
        </select>
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>

<?php require('footer.php'); ?>