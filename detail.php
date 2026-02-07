<?php
include 'config.php';

// Validate and get blog ID
$blog_id = isset($_GET['id']) && is_numeric($_GET['id']) ? (int)$_GET['id'] : 0;
if ($blog_id <= 0) {
    die("Invalid Blog ID.");
}

// Fetch blog data
$stmt = $conn->prepare("SELECT * FROM tbl_blog WHERE id = ?");
$stmt->bind_param("i", $blog_id);
$stmt->execute();
$result = $stmt->get_result();
if ($result->num_rows == 0) {
    die("Blog not found.");
}
$blog = $result->fetch_assoc();

// Prepare blog-specific variables with unique names
$blog_heading      = !empty($blog['heading']) ? htmlspecialchars($blog['heading']) : 'Untitled';
$blog_image        = !empty($blog['image1']) ? htmlspecialchars($blog['image1']) : 'no-image.jpg';
$blog_date         = !empty($blog['date']) ? date("d", strtotime($blog['date'])) : '';
$blog_month        = !empty($blog['date']) ? date("M", strtotime($blog['date'])) : '';
$blog_full_date    = !empty($blog['date']) ? date("d M Y", strtotime($blog['date'])) : '';
$blog_keywords     = !empty($blog['meta_keyword']) ? htmlspecialchars($blog['meta_keyword']) : '';
$blog_short_desc   = !empty($blog['short_description']) ? nl2br(htmlspecialchars($blog['short_description'])) : '';
$blog_description  = !empty($blog['description']) ? $blog['description'] : '';
?>
<!DOCTYPE html>
<html lang="en">
<?php include 'include/head.php'; ?>
<body>
<div class="page">
    <?php include 'include/topbar.php'; ?>
    <?php include 'include/navbar.php'; ?>

    <!-- Page Title -->
    <div class="ttm-page-title-row ttm-bg ttm-bgimage-yes ttm-bgcolor-darkgrey clearfix">
        <div class="ttm-row-wrapper-bg-layer ttm-bg-layer"></div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <div class="ttm-page-title-row-inner">
                        <div class="page-title-heading">
                            <h2 class="title">Blog Single View</h2>
                        </div>
                        <div class="breadcrumb-wrapper">
                            <span><a href="index.php">Home</a></span>
                            <span>Blog</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>                    
    </div>

    <!-- Site Main -->
    <div class="site-main">
        <div class="ttm-row sidebar ttm-sidebar-right clearfix">
            <div class="container">
                <div class="row">
                    <!-- Blog Content -->
                    <div class="col-lg-8 content-area">
                        <article class="post ttm-blog-single clearfix">

                            <div class="ttm-post-featured-wrapper ttm-featured-wrapper">
                                <div class="ttm-post-featured">
                                    <img class="img-fluid" src="admin/uploads/products/<?= $blog_image ?>" alt="<?= $blog_heading ?>" style="width: 100%; height: auto; object-fit: cover;">
                                </div>
                                <?php if (!empty($blog_date) && !empty($blog_month)): ?>
                                <div class="ttm-box-post-date">
                                    <span class="ttm-entry-date">
                                        <time class="entry-date"><?= $blog_date ?><span class="entry-month entry-year"><?= $blog_month ?></span></time>
                                    </span>
                                </div>
                                <?php endif; ?>
                            </div>

                            <div class="ttm-blog-single-content">
                                <div class="ttm-post-entry-header">
                                    <h2><?= $blog_heading ?></h2>
                                    <div class="post-meta">
                                        <span class="ttm-meta-line category"><i class="ti ti-folder"></i><?= $blog_keywords ?></span>
                                        <span class="ttm-meta-line byline"><i class="ti ti-user"></i>Admin</span>
                                        <span class="ttm-meta-line tags-links"><i class="fa fa-calendar"></i><?= $blog_full_date ?></span>
                                    </div>
                                </div>
                                <div class="entry-content">
                                    <div class="ttm-box-desc-text">
                                        <?php if (!empty($blog_short_desc)): ?>
                                            <p><?= $blog_short_desc ?></p>
                                        <?php endif; ?>

                                        <?php if (!empty($blog_description)): ?>
                                            <div><?= $blog_description ?></div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>

                        </article>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php include 'include/footer.php'; ?>
    <a id="totop" href="#top"><i class="fa fa-angle-up"></i></a>
</div>
<?php include 'include/js.php'; ?>
</body>
</html>
