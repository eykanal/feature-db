<?php

use Doctrine\Common\Collections\ArrayCollection;
class Group
{
	private $group_id;
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