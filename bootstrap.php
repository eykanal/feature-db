<?php

$config = parse_ini_file("config/config.ini");

// Load files for Doctrine to run
require_once "vendor/autoload.php";

// Obtain EntityManager
use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;

$paths = array("entities");
$isDevMode = false;
$dbParams = array(
  'driver'   => $config['driver'],
  'user'     => $config['user'],
  'password' => $config['password'],
  'dbname'   => $config['dbname'],
/* 'unix_socket' => $config['unix_socket'], */
);

$config = Setup::createXMLMetadataConfiguration($paths, $isDevMode);
$em     = EntityManager::create($dbParams, $config);

// Load files for our application

require_once "entities/Feature.php";
require_once "entities/Group.php";
require_once "entities/Version.php";

?>
