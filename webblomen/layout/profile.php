<?php
session_start();

if (!isset($_SESSION['logged_in'])) {
    header('Location: login.php');
    die();
}

include("../lib/Db.php");
$db = new Db();
$conn = $db->getConnection();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include_once 'blocks/head.php'; ?>
    <title>FlowerPower | Profile </title>
</head>
<body>

<?php include_once 'blocks/nav.php'; ?>

<div id="homepic">
    <h1>
        <?php
        echo $_SESSION['full_name'];
        $sth = $conn->prepare('SElECT * FROM medewerker WHERE idmedewerker = :id');
        $sth->execute([':id' => $_SESSION['user_id']]);
        $results = $sth->fetchAll(PDO::FETCH_ASSOC)[0];
        ?>
    </h1>
    <form action="../lib/update.php" method="post">
        <div>
            <label>Voornam:</label>
            <input class="text" type="text" name="voornaam" id="voornaam" value="<?= $results['voornaam'] ?>"/>
        </div>
        <div>
            <label>tussenvoegsel:</label>
            <input class="text" type="text" id="tussenvoegsel" name="tussenvoegsel"/>
        </div>
        <div>
            <label>Achternaam:</label>
            <input class="text" type="text" name="achternaam" id="achternaam"  value="<?= $results['achternaam'] ?>"/>
        </div>
        <div>
            <label>Adres:</label>
            <input type="text" name="adres" id="adres">
        </div>
        <div>
            <label>Huisnr:</label>
            <input type="text" name="huisnr" id="huisnr">
        </div>
        <div>
            <label>Postcode:</label>
            <input type="text" id="postcode" name="postcode">
        </div>
        <div>
            <label>Plaats:</label>
            <input type="text" name="plaats" id="Plaats">
        </div>
        <div>
            <label>Telefoon:</label>
            <input type="text" name="telefoon" id="telefoon">

        </div>
        <div>
            <label>Email:</label>
            <input type="email" name="email" class="email" id="adrsemail" onkeydown="ValidateEmail()" required>
            <span id=""></span>
        </div>
        <div>
            <label>Wachtwoord:</label>
            <input type="text" name="wachtwoord" class="wachtwoord" id="nuWachtwoord" required>
        </div>
        <div>
            <button type="submit">Update</button>
        </div>

    </form>
</div>

<div id="footer">
    <a href=""><i class="fab fa-twitter"></i></a>
    <a href=""><i class="fab fa-facebook-square"></i></a>
    <a href=""><i class="fab fa-whatsapp"></i></a>
</div>


</body>

</html>