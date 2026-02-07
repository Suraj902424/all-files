<div class="container-fluid py-5">
    <div class="container">
        <!-- Section Heading -->
        <div class="text-center mx-auto mb-5" style="max-width: 500px;">
            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Our Doctors</h5>
            <h1 class="display-4">Qualified Healthcare Professionals</h1>
        </div>

        <!-- Team Carousel -->
        <div class="owl-carousel team-carousel position-relative">
            <?php 
            $sql = mysqli_query($conn, "SELECT * FROM tbl_team") or die(mysqli_error($conn));
            while ($row = mysqli_fetch_assoc($sql)) { ?>
            
                <!-- Team Item -->
                <div class="team-item">
                    <div class="row g-0 bg-light rounded overflow-hidden">
                        
                        <!-- Doctor Image -->
                        <div class="col-12 col-sm-5 h-100">
                            <img class="img-fluid h-100" 
                                 src="admin/uploads/products/<?= $row['image1'] ?>" 
                                 alt="<?= htmlspecialchars($row['name']) ?>" 
                                 style="object-fit: cover;">
                        </div>

                        <!-- Doctor Details -->
                        <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                            <div class="mt-auto p-4">
                                <h3><?= htmlspecialchars($row['name']) ?></h3>
                                <h6 class="fw-normal fst-italic text-primary mb-4">
                                    <?= htmlspecialchars($row['post']) ?>
                                </h6>
                                <p class="m-0"><?= htmlspecialchars($row['overview']) ?></p>
                            </div>

                            <!-- Social Links -->
                            <div class="d-flex mt-auto border-top p-4">
                                <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            
            <?php } ?>
        </div>
    </div>
</div>
