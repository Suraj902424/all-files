<!-- Hero Slider Start -->
<div id="heroCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <?php
        $sql = mysqli_query($conn, "SELECT * FROM tbl_banner") or die(mysqli_error($conn));
        $isFirst = true;

        while ($row = mysqli_fetch_assoc($sql)) {
            $activeClass = $isFirst ? 'active' : '';
            $isFirst = false;
        ?>
            <div class="carousel-item <?= $activeClass ?>">
                <img src="admin/uploads/products/<?= $row['image1'] ?>" class="d-block w-100 hero-img" alt="Banner">
                <div class="carousel-caption d-flex flex-column justify-content-center align-items-start h-100 text-start p-5">
                    <h5 class="text-white text-uppercase border-bottom border-5 mb-3">
                        <?= htmlspecialchars($row['name']) ?>
                    </h5>
                    <h1 class="display-1 text-white mb-4">
                        <?= $row['description'] ?>
                    </h1>
                    <div class="pt-2">
                        <a href="<?= htmlspecialchars($row['link']) ?>" class="btn btn-light rounded-pill py-md-3 px-md-5 mx-2">Find Doctor</a>
                        <a href="<?= htmlspecialchars($row['link']) ?>" class="btn btn-outline-light rounded-pill py-md-3 px-md-5 mx-2">Appointment</a>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>

    <!-- Controls -->
    <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>
</div>
<!-- Hero Slider End -->

<!-- Hero Slider End -->

<style>
  .hero-img {
    width: 100%;
    height: 800px; /* Adjust height as needed */
    object-fit: cover;
}

.carousel-item {
    position: relative;
}

.carousel-caption {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    display: flex;
    align-items: center;
    justify-content: flex-start;
    background: rgba(0, 0, 0, 0.4); /* Optional: dark overlay */
}

</style>