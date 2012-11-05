<?php

use Doctrine\Common\Collections\ArrayCollection;

/** @Entity @Table(name="features") */
class Feature
{
	/** @Id @Column(type="integer") @GeneratedValue */
	private $feature_id;
	/** @Column(type="string") */
	private $internal_desc;
	/** @Column(type="string") */
	private $internal_slug;
	/** @Column(type="text") */
	private $long_desc;
	/** @ManyToOne(targetEntity="Version") @JoinColumn(name="version_id_introduced", referencedColumnName="version_id")  */
	private $version_id_introduced;
	/** @ManyToOne(targetEntity="Version") @JoinColumn(name="version_id_deprecated", referencedColumnName="version_id") */
	private $version_id_deprecated;
	/** @ManyToOne(targetEntity="Group") @JoinColumn(name="group_id", referencedColumnName="group_id") */
	private $group_id;
	/** @Column(type="integer") */
	private $applies_to_pro;
	/** @Column(type="integer") */
	private $applies_to_youtube;
	/** @Column(type="integer") */
	private $applies_to_vimeo;
	/** @Column(type="integer") */
	private $applies_to_bliptv;
	/** @Column(type="integer") */
	private $applies_to_wix_free;
	/** @Column(type="integer") */
	private $applies_to_wix_paid;
	/** @Column(type="integer") */
	private $applies_to_downloadable_addon;

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

	/* No setters as of yet; meant for read-only implementation */
}
