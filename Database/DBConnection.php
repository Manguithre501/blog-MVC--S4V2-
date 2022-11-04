<?php

namespace Database;

use PDO;
use PDOException;

final class DBConnection
{
    private static $pdo,
        $dbhost,
        $dbname,
        $dbuser,
        $dbpswd,
        $port;

    private static $instance = null;


    public function __construct()
    {
        static::$dbhost = 'localhost';
        static::$dbname = 'blog';
        static::$dbuser = 'root';
        static::$dbpswd = '';
        static::$port = 3306;
    }

    public static function getPDO(): PDO
    {
        if (self::$instance === null) {
            try {
                self::$instance = new PDO('mysql:host=' . static::$dbhost . ';port=' . static::$port . ';dbname=' . static::$dbname, static::$dbuser, static::$dbpswd, array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8', PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ));
            } catch (PDOException $e) {
                die("Une erreur est survenue lors de la connexion à la base de données");
            }
        }

        return self::$instance;
    }
}
