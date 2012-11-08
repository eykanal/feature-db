<?php

use Doctrine\Common\Collections\ArrayCollection;
class Feature
{
	private $feature_id;
	private $internal_desc;
	private $internal_slug;
	private $long_desc;
	private $version_id_introduced;
	private $version_id_deprecated;
	private $group_id;
	private $applies_to_pro;
	private $applies_to_youtube;
	private $applies_to_vimeo;
	private $applies_to_bliptv;
	private $applies_to_wix_free;
	private $applies_to_wix_paid;
	private $applies_to_downloadable_addon;
	private $paid;

	public function getId()
	{
		return $this->feature_id;
	}

	public function getDesc()
	{
		return $this->internal_desc;
	}

	public function getSlug()
	{
		return $this->internal_slug;
	}

	public function getVersionIdIntroduced()
	{
		return $this->version_id_introduced;
	}

	public function getVerionIdDeprecated()
	{
		return $this->version_id_deprecated;
	}

	public function getPro()
	{
		return $this->applies_to_pro;
	}

	public function getYoutube()
	{
		return $this->applies_to_youtube;
	}

	public function getVimeo()
	{
		return $this->applies_to_vimeo;
	}

	public function getBliptv()
	{
		return $this->applies_to_bliptv;
	}

	public function getWixFree()
	{
		return $this->applies_to_wix_free;
	}

	public function getWixPaid()
	{
		return $this->applies_to_wix_paid;
	}

	public function getDownloadableAddon()
	{
		return $this->applies_to_downloadable_addon;
	}

	public function getPaid()
	{
		return $this->paid;
	}
	/* No setters as of yet; meant for read-only implementation */
}