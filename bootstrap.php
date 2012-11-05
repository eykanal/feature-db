<?php

// Load files for Doctrine to run
require_once "vendor/autoload.php";

// Obtain EntityManager
use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;

$paths = array("entities");
$isDevMode = false;
$dbParams = array(
  'driver'   => 'pdo_mysql',
  'user'     => 'root',
  'password' => 'ALlh42',
  'dbname'   => 'tubepress',
  'unix_socket' => '/Applications/mampstack-5.3.17-1/mysql/tmp/mysql.sock',
);

$config = Setup::createXMLMetadataConfiguration($paths, $isDevMode);
$em     = EntityManager::create($dbParams, $config);

// Load files for our application

require_once "entities/Feature.php";
require_once "entities/Group.php";
require_once "entities/Version.php";

?>
