<?php
session_start();

if (isset($_SESSION['logged_in'])) {
    header('Location: profile.php');
    die();
}
?>
<!DOCTYPE html>
<head>
    <?php include_once 'blocks/head.php'; ?>
    <title>FlowerPower | Login</title>
</head>

<?php include_once 'blocks/nav.php';?>

<div id="registreren">
    <h1>Registreren</h1>
    <form action="../lib/registeren.php" method="post">
        <div>
            <label>Voornam:</label>
            <input class="text" type="text" name="voornaam" id="voornaam"/>
        </div>
        <div>
            <label>tussenvoegsel:</label>
            <input class="text" type="text" id="tussenvoegsel" name="tussenvoegsel"/>
        </div>
        <div>
            <label>Achternaam:</label>
            <input class="text" type="text" name="achternaam" id="achternaam"/>
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
            <input type="submit" name="registreren" value="Ok">
        </div>

    </form>
</div>
<div id="inloggen">
    <h1>Inloggen</h1>
    <form action="../lib/inloggen.php" method="post">
        <div>
            <label>Email:</label>
            <input type="email" name="email" id="email" onkeydown="ValidateEmail()">
            <span id="text"></span>
        </div>
        <div>
            <label>Wachtwoord:</label>
            <input type="text" name="wachtwoord" id="wachtwoord">
        </div>
        <input type="submit" name="log" value="Ok">

    </form>
</div>
</body>
</html>