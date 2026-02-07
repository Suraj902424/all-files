<!-- Testimonial Section -->
<div class="container-fluid py-5">
    <div class="container">
        <!-- Section Heading -->
        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">
                Testimonial
            </h5>
            <h1 class="display-4">Patients Say About Our Services</h1>
        </div>

        <!-- Testimonials Carousel -->
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="owl-carousel testimonial-carousel">
                    <?php 
                        $sql = mysqli_query($conn, "SELECT * FROM tbl_testimonial") or die(mysqli_error($conn));
                        while ($row = mysqli_fetch_assoc($sql)) {
                    ?>
                        <div class="testimonial-item text-center">
                            <!-- Patient Image with Quote Icon -->
                            <div class="position-relative mb-5">
                                <img 
                                    class="img-fluid rounded-circle mx-auto" 
                                    src="admin/uploads/products/<?= $row['image1'] ?>" 
                                    alt="<?= $row['name'] ?>"
                                >
                                <div class="position-absolute top-100 start-50 translate-middle d-flex 
                                            align-items-center justify-content-center bg-white rounded-circle" 
                                     style="width: 60px; height: 60px;">
                                    <i class="fa fa-quote-left fa-2x text-primary"></i>
                                </div>
                            </div>

                            <!-- Testimonial Content -->
                            <p class="fs-4 fw-normal"><?= $row['description'] ?></p>
                            <hr class="w-25 mx-auto">
                            <h3>Patient Name</h3>
                            <h6 class="fw-normal text-primary mb-3"><?= $row['name'] ?></h6>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>
