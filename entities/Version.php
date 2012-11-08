<?php

use Doctrine\Common\Collections\ArrayCollection;
class Version
{
	private $version_id;
	private $version;
	
	public function getId()
	{
		return $this->version_id;
	}

	public function getVersion()
	{
		return $this->version;
	}
}