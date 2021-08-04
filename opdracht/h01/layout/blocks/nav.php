<div id="logo">
    <a href="homepage.php"><img class="logo" src="../img/Logo.png"></a>
</div>

<div id="navbar">
    <a href="">Webshop</a>
    <a href="contact.php">Contact</a>

    <?php
    if (isset($_SESSION['logged_in'])) {
        ?>
        <a href="profile.php"><i class="fas fa-user-alt"></i></a>
        <a href="../lib/logout.php"><i class="fas fa-sign-out-alt"></i></a>
        <?php
    }
    ?>

    <?php
    if (!isset($_SESSION['logged_in'])) {
        ?>
        <a href="login.php"><i class="fas fa-sign-in-alt"></i></a>
        <?php
    }
    ?>

</div>