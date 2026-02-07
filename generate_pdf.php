<?php
require 'dompdf/autoload.inc.php';
use Dompdf\Dompdf;
use Dompdf\Options;

include 'config.php';

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
if ($id <= 0) {
    die("Invalid Appointment ID.");
}

$stmt = mysqli_prepare($conn, "SELECT * FROM tbl_appointment WHERE id = ?");
mysqli_stmt_bind_param($stmt, "i", $id);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);
$data = mysqli_fetch_assoc($result);
if (!$data) {
    die("Appointment not found.");
}

$logoPath = 'logo.png'; 
$logo = file_exists($logoPath) ? 'data:image/png;base64,' . base64_encode(file_get_contents($logoPath)) : '';

$html = '
<?php
require 'dompdf/autoload.inc.php';
use Dompdf\Dompdf;
use Dompdf\Options;

include 'config.php';

$id = isset($_GET['id']) ? (int)$_GET['id'] : 0;
if ($id <= 0) {
    die("Invalid Appointment ID.");
}

$stmt = mysqli_prepare($conn, "SELECT * FROM tbl_appointment WHERE id = ?");
mysqli_stmt_bind_param($stmt, "i", $id);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);
$data = mysqli_fetch_assoc($result);

if (!$data) {
    die("Appointment not found.");
}

$logoPath = 'logo.png';
$logo = file_exists($logoPath) ? 'data:image/png;base64,' . base64_encode(file_get_contents($logoPath)) : '';

    $html = '
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Appointment Confirmation</title>
    <style>
        <style>
            body { font-family: DejaVu Sans, sans-serif; margin: 0; padding: 0; color: #333; }
            .container {
                max-width: 800px;
                margin: auto;
                padding: 30px;
                border: 1px solid #ddd;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            .header {
                text-align: center;
                border-bottom: 2px solid #000;
                margin-bottom: 20px;
                padding-bottom: 10px;
            }
            .header h1 {
                margin: 0;
                font-size: 28px;
                color: #2c3e50;
            }
            h2 {
                text-align: center;
                margin-top: 0;
                color: #444;
                margin-bottom: 20px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 20px;
            }
            td {
                padding: 10px;
                vertical-align: top;
            }
            .label {
                font-weight: bold;
                width: 35%;
                background: #f5f5f5;
            }
            .footer {
                text-align: center;
                font-size: 12px;
                color: #777;
                border-top: 1px dashed #ccc;
                padding-top: 10px;
                margin-top: 20px;
            }
        </style>
</head>
<body>
        <div class="container">
            <div class="header">
                <h1>Manoj Computer Classes</h1>
            </div>

            <h2>Payment Receipt</h2>

            <table>
                     <tr><td class="label">Patient Name</td><td>' . htmlspecialchars($data['name']) . '</td></tr>
            <tr><td class="label">Mobile Number</td><td>' . htmlspecialchars($data['mobile']) . '</td></tr>
            <tr><td class="label">Department</td><td>' . htmlspecialchars($data['department']) . '</td></tr>
            </table>

            <table>
                  <tr><td class="label">Doctor</td><td>' . htmlspecialchars($data['doctor']) . '</td></tr>
            <tr><td class="label">Date</td><td>' . date("d M, Y", strtotime($data['date'])) . '</td></tr>
            <tr><td class="label">Time</td><td>' . date("h:i A", strtotime($data['time'])) . '</td></tr>
            </table>

            <div class="footer">
                This is a computer-generated receipt and does not require a signature.<br>
                © ' . date("Y") . ' Manoj Classes. All rights reserved.
            </div>
        </div>

</body>
</html>
';

$options = new Options();
$options->set('isRemoteEnabled', true);
$options->set('defaultFont', 'Arial');

$dompdf = new Dompdf($options);
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'portrait');
$dompdf->render();
$dompdf->stream("appointment_receipt.pdf", ["Attachment" => false]);
?>
