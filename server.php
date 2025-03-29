<?php
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$database = "blood_donation"; 


$conn = new mysqli($servername, $username, $database);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

 
?>
//register
<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
include 'db_connect.php';

// Get POST data
$name = $_POST['name'];
$blood_type = $_POST['blood_type'];
$address = $_POST['address'];
$contact = $_POST['contact'];
$email = $_POST['email'];
$role = $_POST['role'];

// Check if contact or email already exists
$check_query = $conn->prepare("SELECT * FROM donors WHERE contact = ? OR email = ?");
$check_query->bind_param("ss", $contact, $email);
$check_query->execute();
$result = $check_query->get_result();

if ($result->num_rows > 0) {
    echo json_encode(["success" => false, "message" => "Email or Contact already exists."]);
} else {
    // Insert new donor
    $stmt = $conn->prepare("INSERT INTO donors (name, blood_type, address, contact, email, role) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $name, $blood_type, $address, $contact, $email, $role);

    if ($stmt->execute()) {
        echo json_encode(["success" => true, "message" => "Registration successful."]);
    } else {
        echo json_encode(["success" => false, "message" => "Error in registration."]);
    }

    $stmt->close();
}
$conn->close();
?>



//server
<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");
include 'db_connect.php';

$blood_type = $_GET['blood_type'];
$address = $_GET['address'];

$query = "SELECT name, blood_type, address, contact, email FROM donors WHERE blood_type = ? AND address LIKE ?";
$stmt = $conn->prepare($query);
$searchAddress = "%$address%";
$stmt->bind_param("ss", $blood_type, $searchAddress);
$stmt->execute();
$result = $stmt->get_result();

$donors = [];
while ($row = $result->fetch_assoc()) {
    $donors[] = $row;
}

echo json_encode($donors);
$stmt->close();
$conn->close();
?>
