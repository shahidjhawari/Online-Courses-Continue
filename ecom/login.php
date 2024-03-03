<?php require('top.php'); ?>

<style>
    .form-container {
        max-width: 400px;
        margin: 50px auto;
    }

    .btn {
        margin-top: 10px;
    }
</style>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-6 form-container">
            <h2 class="text-center mb-4">Login</h2>
            <form id="login-form" method="post">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="login_email" id="login_email" placeholder="Enter your email" required>
                    <span class="field_error" id="login_email_error"></span>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="login_password" id="login_password" placeholder="Enter your password" required>
                    <span class="field_error" id="login_password_error"></span>
                </div>
                <button type="button" class="btn btn-warning btn-block" onclick="user_login()">Login</button>
            </form>
            <div class="form-output login_msg">
                <p class="form-messege field_error"></p>
            </div>
        </div>

        <div class="col-lg-6 form-container">
            <h2 class="text-center mb-4">Register</h2>
            <form id="register-form" method="post">
                <div class="form-group">
                    <label for="name">Name</label>
                    <input type="text" class="form-control" name="name" id="name" placeholder="Enter your name" required>
                    <span class="field_error" id="name_error"></span>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" name="email" id="email" placeholder="Enter your email" required>
                    <span class="field_error" id="email_error"></span>
                </div>
                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="tel" class="form-control" name="mobile" id="mobile" placeholder="Enter your phone number" required>
                    <span class="field_error" id="mobile_error"></span>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" name="password" id="password" placeholder="Enter your password" required>
                    <span class="field_error" id="password_error"></span>
                </div>
                <button type="button" class="btn btn-warning btn-block" onclick="user_register()">Register</button>
            </form>
            <div class="form-output register_msg">
                <p class="form-messege field_error"></p>
            </div>
        </div>
    </div>
</div>

<?php require('footer.php'); ?>