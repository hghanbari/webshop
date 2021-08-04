<?php


class Db
{
    private $connection;

    function getConnection() {

        $user = 'root';
        $password = '0010345000';
        $db = 'flowerpower';
        $host = 'localhost';
        $port = 3306;

        try {
           $this->connection = new PDO('mysql:host='.$host.';port='.$port.';dbname='.$db , $user, $password);

        } catch (PDOException $e) {
            print "Error!:" . $e->getMessage() . "<br/>";
            die();

        }
        return $this->connection;
    }

}