<?php
include 'config.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['department'])) {
    $department = mysqli_real_escape_string($conn, $_POST['department']);

    $sql = "SELECT id, name FROM tbl_doctor WHERE department = '$department'";
    $result = mysqli_query($conn, $sql);

    echo '<option value="">Select Doctor</option>';
    while ($row = mysqli_fetch_assoc($result)) {
        echo '<option value="' . $row['id'] . '">' . htmlspecialchars($row['name']) . '</option>';
    }
}
?>
