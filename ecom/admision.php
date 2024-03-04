<?php require('top.php'); ?>

<style>
    .box {
        margin-top: 40px;
        margin-bottom: 40px;
    }
</style>

<div class="container box">
  <h2>Admission Form</h2>
  <form>
    <div class="form-group">
      <label for="fullName">Full Name:</label>
      <input type="text" class="form-control" id="fullName" placeholder="Enter Full Name" required>
    </div>
    <div class="form-group">
      <label for="fullName">Father Name:</label>
      <input type="text" class="form-control" id="fatherName" placeholder="Enter Father Name" required>
    </div>
    <div class="form-group">
      <label for="cnic">CNIC:</label>
      <input type="text" class="form-control" id="cnic" placeholder="Enter CNIC" required>
    </div>
    <div class="form-group">
      <label for="phoneNumber">Phone Number:</label>
      <input type="tel" class="form-control" id="phoneNumber" placeholder="Enter Phone Number" required>
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter Email" required>
    </div>
    <div class="form-group">
      <label for="select1">Select Option 1:</label>
      <select class="form-control" id="select1" required>
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