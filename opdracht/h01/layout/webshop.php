


<!DOCTYPE html>
<html>
<head>
    <link href='https://fonts.googleapis.com/css?family=Bangers' rel='stylesheet'>
    <title>webshop</title>
    <link rel="stylesheet" href="../css/webshop.css">
    <img class="logo" src="img/logo.jpg">
</head>
<body>
<main>
    <form action="" method="get">
        <div class="form-group">
            <label for="sell">Mark:</label>
        </div>

    </form>
    <div class="autos-list">
        <?php


        if ($query_mark ||  $query_min_prijs || $query_max_prijs) {
            foreach ($auto_overview->getGefilterdeLijst($query_mark, $query_min_prijs, $query_max_prijs) as $auto) { ?>
                <div class="auto">
                    <img src='<?= $auto->getUrl() ?>'>
                    <h3><?= $auto->getMark() ?></h3>
                    <p>€ <?= $auto->getPrijs() ?></p>
                </div>
            <?php }
        } else {
            foreach ($auto_overview->getAutoLijst() as $auto) { ?>
                <div class="auto">
                    <img src='<?= $auto->getUrl() ?>'>
                    <h3><?= $auto->getMark() ?></h3>
                    <p>€ <?= $auto->getPrijs() ?></p>
                </div>
            <?php }
        } ?>
    </div>
</main>
</body>
</html>


