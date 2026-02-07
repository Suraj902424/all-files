<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
    <?php include 'include/head.php'; ?>
    <style>
        .thank-you-box {
            padding: 80px 20px;
            text-align: center;
        }
        .thank-you-box h1 {
            font-size: 36px;
            color: green;
        }
    </style>
</head>
<body class="bg-light">

    <?php include 'include/topbar.php'; ?>
    <?php include 'include/navbar.php'; ?>

    <div class="container thank-you-box">
        <h1>✅ Thank you!</h1>
        <p>Your appointment has been booked successfully.</p>
        <a href="index.php" class="btn btn-primary mt-3">Go to Home</a>
    </div>

    <?php include 'include/footer.php'; ?>
    <script src="js/main.js"></script>
</body>
</html>
