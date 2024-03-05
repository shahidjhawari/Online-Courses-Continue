<?php 
require('top.php');
$servername = "localhost";
$username = "root";
$password = "";
$database = "nawab8";

$conn = new mysqli($servername, $username, $password, $database);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $full_name = $conn->real_escape_string($_POST['fullName']);
    $father_name = $conn->real_escape_string($_POST['fatherName']);
    $cnic = $conn->real_escape_string($_POST['cnic']);
    $phone_number = $conn->real_escape_string($_POST['phoneNumber']);
    $email = $conn->real_escape_string($_POST['email']);
    $select_option = $conn->real_escape_string($_POST['select1']);

    $sql = "INSERT INTO admissions (full_name, father_name, cnic, phone_number, email, select_option)
            VALUES ('$full_name', '$father_name', '$cnic', '$phone_number', '$email', '$select_option')";

    if ($conn->query($sql) === TRUE) {
        echo "<p class='msg-feild'>Your form send successfully, We will contact you on your phone number</p>";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>

<style>
    .box {
        margin-top: 40px;
        margin-bottom: 40px;
    }
    .msg-feild {
        text-align: center;
        color: red;
        transform: translateY(550px);
        font-weight: bold;
    }
</style>

<div class="container box">
  <h2>Admission Form</h2>
  <form action="#" method="post">
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
        <input type="text" class="form-control" maxlength="13" id="cnic" name="cnic" placeholder="Enter CNIC" required>
    </div>
    <div class="form-group">
        <label for="phoneNumber">WhatsApp Number:</label>
        <input type="text" class="form-control" id="phoneNumber" maxlength="11" name="phoneNumber" placeholder="Enter Whatsapp Number" required>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" class="form-control" maxlength="30" id="email" name="email" placeholder="Enter Email" required>
    </div>
    <div class="form-group">
        <label for="select1">Select Courses:</label>
        <select class="form-control" id="select1" name="select1" required>
            <option value="Web Development">Web Development</option>
            <option value="Web Designing">Web Designing</option>
            <option value="Ethical Hacking">Ethical Hacking</option>
        </select>
    </div>
    <button type="submit" class="btn btn-warning mt-3">Submit</button>
</form>
</div>

<script>
    // Client-side validation script
    document.getElementById('fullName').addEventListener('input', function () {
        if (this.value.length > 30) {
            this.setCustomValidity('Name cannot exceed 30 characters');
        } else {
            this.setCustomValidity('');
        }
    });

    document.getElementById('fatherName').addEventListener('input', function () {
        if (this.value.length > 30) {
            this.setCustomValidity('Father Name cannot exceed 30 characters');
        } else {
            this.setCustomValidity('');
        }
    });

    document.getElementById('cnic').addEventListener('input', function () {
        // Remove non-numeric characters
        this.value = this.value.replace(/\D/g, '');
        if (this.value.length !== 13) {
            this.setCustomValidity('CNIC must be 13 numeric characters long');
        } else {
            this.setCustomValidity('');
        }
    });

    document.getElementById('phoneNumber').addEventListener('input', function () {
        // Remove non-numeric characters
        this.value = this.value.replace(/\D/g, '');
        if (this.value.length !== 11) {
            this.setCustomValidity('WhatsApp number must be 11 numeric characters long');
        } else {
            this.setCustomValidity('');
        }
    });
</script>


<?php require('footer.php'); ?>