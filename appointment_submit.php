<?php
include 'config.php';
require 'dompdf/autoload.inc.php';
use Dompdf\Dompdf;

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $doctor_id = mysqli_real_escape_string($conn, $_POST['doctor']);
    $name      = mysqli_real_escape_string($conn, $_POST['name']);
    $mobile    = mysqli_real_escape_string($conn, $_POST['mobile']);
    $date      = mysqli_real_escape_string($conn, $_POST['date']);
    $time      = mysqli_real_escape_string($conn, $_POST['time']);

    // Doctor details (name and department) from doctor ID
    $doc_res = mysqli_query($conn, "SELECT name, department FROM tbl_doctor WHERE id = '$doctor_id'");
    $doc_row = mysqli_fetch_assoc($doc_res);
    $doctor_name = $doc_row['name'];
    $department  = $doc_row['department'];

    // Save into appointment table
    $sql = "INSERT INTO tbl_appointment (department, doctor, name, mobile, date, time)
            VALUES ('$department', '$doctor_name', '$name', '$mobile', '$date', '$time')";

    if (mysqli_query($conn, $sql)) {
        // PDF HTML
        $html = "
        <style>
            body { font-family: Arial; font-size: 14px; }
            h2 { text-align: center; color: #0d6efd; }
            .info { margin-top: 20px; }
            .info p { margin: 5px 0; line-height: 1.6; }
        </style>
        <h2>Appointment Confirmation</h2>
        <div class='info'>
            <p><strong>Name:</strong> $name</p>
            <p><strong>Mobile:</strong> $mobile</p>
            <p><strong>Department:</strong> $department</p>
            <p><strong>Doctor:</strong> $doctor_name</p>
            <p><strong>Date:</strong> $date</p>
            <p><strong>Time:</strong> $time</p>
        </div>";

        // Generate PDF
        $dompdf = new Dompdf();
        $dompdf->loadHtml($html);
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();

        $pdf = base64_encode($dompdf->output());

        // Show success + download + redirect
        echo "
        <h3 style='color: green; text-align:center; margin-top:20px;'>Thank you! Your appointment has been booked.</h3>
        <p style='text-align:center;'>Your receipt will download shortly...</p>

        <script>
            const pdfBase64 = '$pdf';
            const byteCharacters = atob(pdfBase64);
            const byteNumbers = new Array(byteCharacters.length);
            for (let i = 0; i < byteCharacters.length; i++) {
                byteNumbers[i] = byteCharacters.charCodeAt(i);
            }
            const byteArray = new Uint8Array(byteNumbers);
            const blob = new Blob([byteArray], {type: 'application/pdf'});
            const link = document.createElement('a');
            link.href = window.URL.createObjectURL(blob);
            link.download = 'appointment_receipt.pdf';
            link.click();

            setTimeout(function() {
                window.location.href = 'thank-you.php';
            }, 1000);
        </script>
        ";
        exit();
    } else {
        echo "<script>alert('Something went wrong.'); window.history.back();</script>";
    }
}
?>
