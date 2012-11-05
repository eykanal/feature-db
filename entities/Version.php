<?php

use Doctrine\Common\Collections\ArrayCollection;

/** @Entity @Table(name="versions") */
class Version
{
	/** @Id @Column(type="integer") @GeneratedValue */
	private $version_id;
	/** @Column(type="string") */
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