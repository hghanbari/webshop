<?php
session_start();

include("../lib/Db.php");
$db = new Db();
$conn = $db->getConnection();

$email = $_POST["email"];
$pass = $_POST["wachtwoord"];

$sth = $conn->prepare('SElECT * FROM klant WHERE email = :email AND wachtwoord = :wachtwoord');
$sth->execute([':email' => $email, ':wachtwoord' => $pass]);
$results = $sth->fetchAll(PDO::FETCH_ASSOC);

if (sizeof($results) == 0) {
    $sth = $conn->prepare('SElECT * FROM medewerker WHERE email = :email AND wachtwoord = :wachtwoord');
    $sth->execute([':email' => $email, ':wachtwoord' => $pass]);
    $results = $sth->fetchAll(PDO::FETCH_ASSOC);

    if (sizeof($results) == 0) {
        ?>
        <h1>Incorrect username or password</h1>
        <a href="../layout/login.php">Return to login page</a>
        <?php
        die();
    } else {
        $_SESSION['user_id'] = $results[0]['idmedewerker'];
    }
} else {
    $_SESSION['user_id'] = $results[0]['idklant'];
}

$_SESSION['logged_in'] = true;
$_SESSION['full_name'] = "{$results[0]['voornaam']} {$results[0]['achternaam']}" ;
header('Location:../layout/homepage.php');

