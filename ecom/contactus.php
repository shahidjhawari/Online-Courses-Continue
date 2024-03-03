<?php require('top.php'); ?>

<style>
    .contact-form {
        max-width: 500px;
        margin: auto;
        padding: 20px;
    }

    .btn-primary {
        margin-top: 20px;
    }
</style>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h2 class="text-center mt-5 mb-3">Contact Us</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-8 offset-lg-2">
            <form class="contact-form" id="contact-form" action="#" method="post">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label for="mobile">Mobile:</label>
                    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter your mobile number" required>
                </div>
                <div class="form-group">
                    <label for="message">Message:</label>
                    <textarea class="form-control" name="message" id="message" rows="4" placeholder="Enter your message"></textarea>
                </div>
                <button type="button" onclick="send_message()" class="btn btn-primary btn-block">Send Message</button>
            </form>
        </div>
    </div>
</div>

<?php require('footer.php'); ?>