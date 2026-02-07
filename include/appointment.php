   
   
<?php
include 'config.php';
$dept_sql = mysqli_query($conn, "SELECT DISTINCT department FROM tbl_doctor WHERE department != ''");
?>

<!-- Appointment Section Start -->
<div class="container-fluid bg-primary my-5 py-5">
    <div class="container py-5">
        <div class="row gx-5">
            <div class="col-lg-6 mb-5 mb-lg-0">
                <div class="mb-4">
                    <h5 class="d-inline-block text-white text-uppercase border-bottom border-5">Appointment</h5>
                    <h1 class="display-4 text-white">Make An Appointment For Your Family</h1>
                </div>
                <p class="text-white mb-5">Eirmod sed tempor lorem ut dolores. Aliquyam sit sadipscing kasd ipsum...</p>
                <a class="btn btn-dark rounded-pill py-3 px-5 me-3" href="#">Find Doctor</a>
                <a class="btn btn-outline-dark rounded-pill py-3 px-5" href="#">Read More</a>
            </div>

            <!-- Appointment Form -->
            <div class="col-lg-6">
                <div class="bg-white text-center rounded p-5">
                    <h1 class="mb-4">Book An Appointment</h1>
                    <form method="post" action="appointment_submit.php">
                        <div class="row g-3">
                            <!-- Department Dropdown -->
                            <div class="col-12 col-sm-6">
                                <select class="form-select bg-light border-0" name="department" id="department" style="height: 55px;" required>
                                    <option value="">Select Department</option>
                                    <?php while($dept = mysqli_fetch_assoc($dept_sql)) { ?>
                                        <option value="<?= htmlspecialchars($dept['department']) ?>">
                                            <?= htmlspecialchars($dept['department']) ?>
                                        </option>
                                    <?php } ?>
                                </select>
                            </div>

                            <!-- Doctor Dropdown -->
                            <div class="col-12 col-sm-6">
                               <select class="form-select bg-light border-0" name="doctor" id="doctor" style="height: 55px;" required>
    <option value="">Select Doctor</option>
</select>

                            </div>

                            <!-- Name -->
                            <div class="col-12 col-sm-6">
                                <input type="text" name="name" class="form-control bg-light border-0" placeholder="Your Name" style="height: 55px;" required>
                            </div>

                            <!-- Mobile -->
                            <div class="col-12 col-sm-6">
                                <input type="text" name="mobile" class="form-control bg-light border-0" placeholder="Your Mobile Number" style="height: 55px;" required>
                            </div>

                            <!-- Date -->
                            <div class="col-12 col-sm-6">
                                <input type="date" name="date" class="form-control bg-light border-0" style="height: 55px;" required>
                            </div>

                            <!-- Time -->
                            <div class="col-12 col-sm-6">
                                <select class="form-select bg-light border-0" name="time" style="height: 55px;" required>
                                    <option value="">Select Time</option>
                                    <option>10:00 AM</option>
                                    <option>11:00 AM</option>
                                    <option>12:00 PM</option>
                                    <option>2:00 PM</option>
                                    <option>3:00 PM</option>
                                    <option>4:00 PM</option>
                                </select>
                            </div>

                            <!-- Submit -->
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary w-100 py-3">Make An Appointment</button>
                            </div>
                        </div>
                    </form>

                    <!-- AJAX to load doctors -->
                    <script>
                        document.getElementById('department').addEventListener('change', function () {
                            const dept = this.value;
                            const xhr = new XMLHttpRequest();
                            xhr.open("POST", "get_doctors.php", true);
                            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                            xhr.onload = function () {
                                document.getElementById('doctor').innerHTML = this.responseText;
                            };
                            xhr.send("department=" + encodeURIComponent(dept));
                        });
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Appointment Section End -->
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
flatpickr("#datepicker", {
    minDate: "today",
    dateFormat: "d-m-Y"
});
</script>