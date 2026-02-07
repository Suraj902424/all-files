<!-- Navbar Start -->
<div class="container-fluid sticky-top bg-white shadow-sm">
    <div class="container">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0">

            <!-- Logo -->
            <a href="index.php" class="navbar-brand">
                <img src="admin/uploads/products/<?= $row['image1'] ?>" alt="RBM Logo" style="height: 50px;">
                <!-- Old Text Logo (hidden as fallback) -->
                <h1 class="m-0 text-uppercase text-primary d-none">
                    <i class="fa fa-clinic-medical me-2"></i>Rbm
                </h1>
            </a>

            <!-- Mobile Menu Button -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>

            <!-- Menu Items -->
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="home" class="nav-item nav-link active">Home</a>
                    <a href="about-me" class="nav-item nav-link">About</a>
                    <a href="our-offerings" class="nav-item nav-link">Service</a>
                    <a href="plan" class="nav-item nav-link">Pricing</a>
                    <a href="blog" class="nav-item nav-link">Blog</a>
                    <a href="meeting" class="nav-item nav-link">Appointment</a>
                    <a href="get-in-touch" class="nav-item nav-link">Contact</a>
                </div>
            </div>

        </nav>
    </div>
</div>
<!-- Navbar End -->
