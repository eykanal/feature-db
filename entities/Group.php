<?php

use Doctrine\Common\Collections\ArrayCollection;

/** @Entity @Table(name="groups") */
class Group
{
	/** @Id @Column(type="integer") @GeneratedValue */
	private $group_id;
	/** @Column(type="string") */
	private $group_name;
	
	public function getId()
	{
		return $this->group_id;
	}

	public function getGroup()
	{
		return $this->group_name;
	}
}