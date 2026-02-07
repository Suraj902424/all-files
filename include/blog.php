    <div class="container-fluid py-5">
        <div class="container">
            <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Blog Post</h5>
                <h1 class="display-4">Our Latest Medical Blog Posts</h1>
            </div>
            <div class="row g-5">
  <?php 
$sql = mysqli_query($conn, "SELECT * FROM tbl_blog ORDER BY id DESC LIMIT 3") or die(mysqli_error($conn));
while ($row = mysqli_fetch_assoc($sql)) {
?>
    <div class="col-xl-4 col-lg-6 mb-4">
        <div class="bg-light rounded overflow-hidden">
            <img class="img-fluid w-100" src="admin/uploads/products/<?= htmlspecialchars($row['image1']) ?>" alt="Blog Image">
            <div class="p-4">
                <!-- Blog title link with ID -->
                <a class="h3 d-block mb-3" href="detail.php?id=<?= $row['id'] ?>">
                    <?= htmlspecialchars($row['heading']) ?>
                </a>
                <p class="m-0">
                    <?= strip_tags($row['short_description']) ?>
                </p>
            </div>
            <div class="d-flex justify-content-between border-top p-4">
                <div class="d-flex align-items-center">
                    <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt="User">
                    <small>
                        <?= htmlspecialchars($row['name'] ?? 'Admin') ?>
                    </small>
                </div>
            </div>
        </div>
    </div>
<?php } ?>


                
                <!-- <div class="col-xl-4 col-lg-6">
                    <div class="bg-light rounded overflow-hidden">
                        <img class="img-fluid w-100" src="img/blog-2.jpg" alt="">
                        <div class="p-4">
                            <a class="h3 d-block mb-3" href="">Dolor clita vero elitr sea stet dolor justo  diam</a>
                            <p class="m-0">Dolor lorem eos dolor duo et eirmod sea. Dolor sit magna
                                rebum clita rebum dolor stet amet justo</p>
                        </div>
                        <div class="d-flex justify-content-between border-top p-4">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt="">
                                <small>John Doe</small>
                            </div>
                            <div class="d-flex align-items-center">
                                <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                            </div>
                        </div>
                    </div>
                </div> -->
                <!-- <div class="col-xl-4 col-lg-6">
                    <div class="bg-light rounded overflow-hidden">
                        <img class="img-fluid w-100" src="img/blog-3.jpg" alt="">
                        <div class="p-4">
                            <a class="h3 d-block mb-3" href="">Dolor clita vero elitr sea stet dolor justo  diam</a>
                            <p class="m-0">Dolor lorem eos dolor duo et eirmod sea. Dolor sit magna
                                rebum clita rebum dolor stet amet justo</p>
                        </div>
                        <div class="d-flex justify-content-between border-top p-4">
                            <div class="d-flex align-items-center">
                                <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt="">
                                <small>John Doe</small>
                            </div>
                            <div class="d-flex align-items-center">
                                <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </div>
