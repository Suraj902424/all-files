<?php include 'config.php'; ?>

<!-- Footer Section -->
<div class="container-fluid bg-dark text-light mt-5 py-5">
    <div class="container py-5">
        <div class="row g-5">

            <!-- Logo & Contact Info -->
            <div class="col-lg-3 col-md-6">
                <a href="index.php" class="navbar-brand mb-3 d-inline-block">
                    <img src="admin/uploads/products/<?= $row['image1'] ?>" alt="RBM Logo" style="height: 60px;">
                </a>
                <!-- Hidden Text Logo (Fallback) -->
                <h4 class="d-none text-primary text-uppercase">
                    <i class="fa fa-clinic-medical me-2"></i>Rbm
                </h4>

                <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">
                    Get In Touch
                </h4>
                <p class="mb-4">
                    No dolore ipsum accusam no lorem. Invidunt sed clita kasd clita et et dolor sed dolor
                </p>
                <p class="mb-2">
                    <i class="fa fa-map-marker-alt text-primary me-3"></i><?= $row['address'] ?>
                </p>
                <p class="mb-2">
                    <i class="fa fa-envelope text-primary me-3"></i><?= $row['email'] ?>
                </p>
                <p class="mb-0">
                    <i class="fa fa-phone-alt text-primary me-3"></i><?= $row['phone1'] ?>
                </p>
            </div>

            <!-- Quick Links -->
            <div class="col-lg-3 col-md-6">
                <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">
                    Quick Links
                </h4>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-light mb-2" href="index.php"><i class="fa fa-angle-right me-2"></i>Home</a>
                    <a class="text-light mb-2" href="about.php"><i class="fa fa-angle-right me-2"></i>About Us</a>
                    <a class="text-light mb-2" href="service.php"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                    <a class="text-light mb-2" href="appointment.php"><i class="fa fa-angle-right me-2"></i>Meet The Team</a>
                </div>
            </div>

            <!-- Popular Links -->
            <div class="col-lg-3 col-md-6">
                <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">
                    Popular Links
                </h4>
                <div class="d-flex flex-column justify-content-start">
                    <a class="text-light mb-2" href="appointment.php"><i class="fa fa-angle-right me-2"></i>Appointment</a>
                    <a class="text-light mb-2" href="service.php"><i class="fa fa-angle-right me-2"></i>Our Services</a>
                    <a class="text-light mb-2" href="blog.php"><i class="fa fa-angle-right me-2"></i>Latest Blog</a>
                    <a class="text-light" href="contact.php"><i class="fa fa-angle-right me-2"></i>Contact Us</a>
                </div>
            </div>

            <!-- Newsletter & Social Links -->
            <div class="col-lg-3 col-md-6">
                <h4 class="d-inline-block text-primary text-uppercase border-bottom border-5 border-secondary mb-4">
                    Newsletter
                </h4>
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control p-3 border-0" placeholder="Your Email Address">
                        <button class="btn btn-primary">Sign Up</button>
                    </div>
                </form>
                <h6 class="text-primary text-uppercase mt-4 mb-3">Follow Us</h6>
                <div class="d-flex">
                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="<?= $row['link2'] ?>">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="<?= $row['link1'] ?>">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-2" href="<?= $row['link4'] ?>">
                        <i class="fab fa-youtube"></i>
                    </a>
                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="<?= $row['link3'] ?>">
                        <i class="fab fa-instagram"></i>
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Footer Bottom Bar -->
<div class="container-fluid bg-dark text-light border-top border-secondary py-4">
    <div class="container">
        <div class="row g-5">
            <div class="col-md-6 text-center text-md-start">
                <p class="mb-md-0">
                    &copy; <a class="text-primary" href="#">Rbm Hospital</a>. All Rights Reserved.
                </p>
            </div>
            <div class="col-md-6 text-center text-md-end">
                <p class="mb-0">
                    Designed by <a class="text-primary" href="#">Eadwine Tech</a>
                </p>
            </div>
        </div>
    </div>
</div>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top">
    <i class="bi bi-arrow-up"></i>
</a>
