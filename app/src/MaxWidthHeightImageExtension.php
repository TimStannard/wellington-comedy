<?php

namespace SilverStripe\WellingtonComedy;
use SilverStripe\ORM\DataExtension;

class MaxWidthHeightImageExtension extends DataExtension {
	
	/**
	 * Crop an image if it exceeds a certain height.
	 * Use in templates e.g. $Image.SetWidth(200).MaxHeight(200)
	 * 
	 * @param integer $maxHeight Max height of image
	 * @return Image
	 */
	public function MaxHeight($maxHeight) {
		if ($this->owner->height > $maxHeight) return $this->owner->CroppedImage($this->owner->width, $maxHeight);
		return $this->owner;
	}
	
	/**
	 * Crop an image if it exceeds a certain width.
	 * Use in templates e.g. $Image.SetHeight(200).MaxWidth(200)
	 * 
	 * @param integer $maxWidth Max width of image
	 * @return Image
	 */
	public function MaxWidth($maxWidth) {
		if ($this->owner->width > $maxWidth) return $this->owner->CroppedImage($maxWidth, $this->owner->height);
		return $this->owner;
	}
}