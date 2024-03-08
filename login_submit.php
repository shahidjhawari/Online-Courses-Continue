<?php
require('connection.inc.php');
require('functions.inc.php');

$email = get_safe_value($con, $_POST['email']);
$password = get_safe_value($con, $_POST['password']);

$res = mysqli_query($con, "SELECT * FROM users WHERE email='$email' AND password='$password'");
$check_user = mysqli_num_rows($res);
if ($check_user > 0) {
    $row = mysqli_fetch_assoc($res);
    $_SESSION['USER_LOGIN'] = 'yes';
    $_SESSION['USER_ID'] = $row['id'];
    $_SESSION['USER_NAME'] = $row['name'];

    // Extend session lifetime to 1 year (31536000 seconds)
    ini_set('session.cookie_lifetime', 31536000);

    // Set session cookie parameters to extend session to 1 year
    session_set_cookie_params(31536000);

    if (isset($_SESSION['WISHLIST_ID']) && $_SESSION['WISHLIST_ID'] != '') {
        wishlist_add($con, $_SESSION['USER_ID'], $_SESSION['WISHLIST_ID']);
        unset($_SESSION['WISHLIST_ID']);
    }

    echo "valid";
} else {
    echo "wrong";
}
?>
