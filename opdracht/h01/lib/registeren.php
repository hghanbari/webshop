<?php
session_start();
include("../lib/Db.php");
$db = new Db();
$conn = $db->getConnection();


$voornam = $_POST["voornaam"];
$tussenvoegsel = $_POST["tussenvoegsel"];
$achternaam = $_POST["achternaam"];
$adres = $_POST["adres"];
$huisnr = $_POST["huisnr"];
$postcode = $_POST["postcode"];
$plaats = $_POST["plaats"];
$telefoon = $_POST["telefoon"];
$email = $_POST["email"];
$wachtwoord = $_POST["wachtwoord"];

$sth = $conn->prepare('INSERT INTO klant (voornaam, tussenvoegsel, achternaam, adres, huisnr, postcode, plaats, 
                   telefoon, email, wachtwoord)  VALUES (:voornam, :tussenvoegsel, :achternaam, :adres, :huisnr,
                                                         :postcode, :plaats, :telefoon, :email, :wachtwoord)');
$bool = $sth->execute([
    ':voornam' => $voornam,
    ':tussenvoegsel' => $tussenvoegsel,
    ':achternaam' => $achternaam,
    ':adres' => $adres,
    ':huisnr' => $huisnr,
    ':postcode' => $postcode,
    ':plaats' => $plaats,
    ':telefoon' => $telefoon,
    ':email' => $email,
    ':wachtwoord' => $wachtwoord
]);

if ($bool) {
    echo "user has been added";
} else {
    print_r($sth->errorInfo());
}