<!DOCTYPE html>
<html lang="en">

<?php include 'include/head.php'; ?>

<body>
    <!-- Topbar Start -->
<?php include 'include/topbar.php'; ?>
    <!-- Topbar End -->


    <!-- Navbar Start -->
     <?php include 'include/navbar.php'; ?>
      <!-- Navbar End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Any Questions?</h5>
                <h1 class="display-4">Please Feel Free To Contact Us</h1>
            </div>
            <div class="row g-5 mb-5">
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-location-arrow text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0"><?= $row['address'] ?></h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-phone text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0"><?= $row['phone1'] ?></h6>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="bg-light rounded d-flex flex-column align-items-center justify-content-center text-center" style="height: 200px;">
                        <div class="d-flex align-items-center justify-content-center bg-primary rounded-circle mb-4" style="width: 100px; height: 70px; transform: rotate(-15deg);">
                            <i class="fa fa-2x fa-envelope-open text-white" style="transform: rotate(15deg);"></i>
                        </div>
                        <h6 class="mb-0"><?= $row['email'] ?></h6>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12" style="height: 500px;">
                    <div class="position-relative h-100">
                        <iframe class="position-relative w-100 h-100"
                            src="<?= $row['url'] ?>"
                            frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                            tabindex="0"></iframe>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center position-relative" style="margin-top: -200px; z-index: 1;">
                <div class="col-lg-8">
                    <div class="bg-white rounded p-5 m-5 mb-0">
<form method="post" action="contact_submit.php" onsubmit="return validateForm();">
    <div class="row g-3">
        <div class="col-12 col-sm-6">
            <input type="text" name="name" class="form-control bg-light border-0" placeholder="Your Name" style="height: 55px;" required>
        </div>
        <div class="col-12 col-sm-6">
            <input type="email" name="email" class="form-control bg-light border-0" placeholder="Your Email" style="height: 55px;" required>
        </div>
        <div class="col-12 col-sm-6">
            <input type="text" name="phone" class="form-control bg-light border-0" placeholder="Mobile Number" style="height: 55px;" required>
        </div>
        <div class="col-12 col-sm-6">
            <input type="text" name="subject" class="form-control bg-light border-0" placeholder="Subject" style="height: 55px;" required>
        </div>
        <div class="col-12">
            <textarea name="message" class="form-control bg-light border-0" rows="5" placeholder="Message" required></textarea>
        </div>
        <div class="col-12">
            <button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>
        </div>
    </div>
</form>

<script>
function validateForm() {
    alert("Form submitted successfully!");
    return true;
}
</script>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <!-- Footer Start -->
     <?php include 'include/footer.php'; ?>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
  <?php include 'include/js.php'; ?>

    <!-- Template Javascript -->
</body>

</html>