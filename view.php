<?php

// Load Doctrine, Entity Manger, entities
require_once "bootstrap.php";

// Select features from database.
$dql = "SELECT f, vi, vd, g FROM Feature f "
			. "JOIN f.version_id_introduced vi "
			. "LEFT JOIN f.version_id_deprecated vd "  	// LEFT JOIN because this column may be null
			. "LEFT JOIN f.group_id g";					// LEFT JOIN because this column may be null

$query = $em->createQuery($dql);
$features = $query->getResult();

// Print out features
$strlen = 0;
foreach($features as $f)
{
	if(strlen($f->getDesc()) > $strlen) { $strlen = strlen($f->getDesc()); }
}

$header = str_pad("ID", 6, " ")
	. str_pad("Description", $strlen+4, " ")
	. "Intro V.\n";
echo "\n" . $header;
echo str_repeat("=", strlen($header))
	. "\n";

foreach($features as $f)
{
	// Additional features can be added as necessary by calling the appropriate getter
	// functions from the Feature class.
    echo str_pad($f->getId(), 6, " ")
    	. str_pad($f->getDesc(), $strlen+4, " ")
    	. $f->getVersionIdIntroduced()->getVersion()
    	. "\n";
}

?>