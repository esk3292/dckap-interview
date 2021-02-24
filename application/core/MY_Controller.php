<?php 
	class Admin_Controller extends CI_Controller
	{
		function __construct()
		{
			parent::__construct();
			error_reporting(1);
			$this->data['admin_url'] = $this->config->item('admin_url');
			$this->data['admin_logo'] = $this->config->item('logo_image');
		}

		public function ImageResizeWithCrop($width, $height, $thumbImage, $savePath){
	        $thumb_file = $savePath.$thumbImage;
	        $newimgPath = base_url().$savePath.$thumbImage;
	        list($w, $h) = getimagesize($thumb_file);
	        $actualW = $w;
	        $actualH = $h;
	        $size=getimagesize($thumb_file);
	        $ratio = max($width/$w, $height/$h);
	        $h = ceil($height / $ratio);
	        $x = ($w - $width / $ratio) / 2;
	        $w = ceil($width / $ratio);
	        if($actualH >= $h)
	        $y = ($actualH - $h)/2;
	        $path = $savePath.$thumbImage;
	        $imgString = file_get_contents($newimgPath);
	        $image = imagecreatefromstring($imgString);
	        $tmp = imagecreatetruecolor($width, $height);
	        imagecopyresampled($tmp, $image, 0, 0, $x, $y, $width, $height, $w, $h); 
	        switch ($size["mime"]) {
	            case 'image/jpeg':
	                imagejpeg($tmp, $path, 100);
	                break;
	            case 'image/png':
	                imagepng($tmp, $path, 0);
	                break;
	            case 'image/gif':
	                imagegif($tmp, $path);
	                break;
	            default:
	                exit;
	            break;
	        }
	        return $path;
	        imagedestroy($image);
	        imagedestroy($tmp);
	    }


	    public function watermarkimages($uploaddir,$image_name){
			$masterURL =$uploaddir.$image_name;
			
			$i = strrpos($image_name,".");
			if (!$i) { return ""; }
			$l = strlen($image_name) - $i;
			$ext = substr($image_name,$i+1,$l);
			$masterExt = $ext;
			
			
			$path = base_url().'assets/admin-assets/admin-images/admin-settings-image/'.$this->config->item('watermark');
			
			$i = strrpos($this->config->item('watermark'),".");
			if (!$i) { return ""; }
			$l = strlen($this->config->item('watermark')) - $i;
			$ext = substr($this->config->item('watermark'),$i+1,$l);
			$waterExt = $ext;
			
			if($waterExt == 'png')$watermark = imagecreatefrompng($path);
			if($waterExt == 'jpg' || $waterExt == 'jpeg')$watermark = imagecreatefromjpeg($path);
			$watermark_width = imagesx($watermark);
			$watermark_height = imagesy($watermark);
			$image = imagecreatetruecolor($watermark_width, $watermark_height);
			if($masterExt == 'png')$image = imagecreatefrompng($masterURL);
			if($masterExt == 'jpg' || $masterExt == 'jpeg')$image = imagecreatefromjpeg($masterURL);
			$size = getimagesize($masterURL);
			$dest_x = round($size[0]/($size[0]/5));
			$dest_y = round($size[1]/($size[0]/5));
			imagecopymerge($image, $watermark, $dest_x, $dest_y,0, 0, $watermark_width, $watermark_height,20);
			imagejpeg($image, $masterURL);
		}

		public function checkLogin($type=''){
	    	if ($type == 'A'){
	    		return $this->session->userdata('fc_admin_session_id');
	    	}else if ($type == 'N'){
	    		return $this->session->userdata('fc_admin_session_name');
	    	}else if ($type == 'M'){
	    		return $this->session->userdata('fc_admin_session_email');
	    	}
	    }
	}

	class Site_Controller extends CI_Controller
	{
		function __construct()
		{
			parent::__construct();
			error_reporting(1);
			$this->load->helper('site_helper');
			$this->data['site_logo'] = $this->config->item('logo_image');
			$this->data['site_name'] = $this->config->item('site_name');

			if($this->checkLogin('U'))
				$this->data['login_id'] = $this->checkLogin('U');
			else
				$this->data['login_id'] = '';
		}

		public function checkLogin($type=''){
	    	if ($type == 'U'){
	    		return $this->session->userdata('fc_session_user_id');
	    	}else if ($type == 'T'){
	    		return $this->session->userdata('fc_temp_session_id');
	    	}
	    }

	    public function ImageResizeWithCrop($width, $height, $thumbImage, $savePath){
	        $thumb_file = $savePath.$thumbImage;
	        $newimgPath = base_url().$savePath.$thumbImage;
	        list($w, $h) = getimagesize($thumb_file);
	        $actualW = $w;
	        $actualH = $h;
	        $size=getimagesize($thumb_file);
	        $ratio = max($width/$w, $height/$h);
	        $h = ceil($height / $ratio);
	        $x = ($w - $width / $ratio) / 2;
	        $w = ceil($width / $ratio);
	        if($actualH >= $h)
	        $y = ($actualH - $h)/2;
	        $path = $savePath.$thumbImage;
	        $imgString = file_get_contents($newimgPath);
	        $image = imagecreatefromstring($imgString);
	        $tmp = imagecreatetruecolor($width, $height);
	        imagecopyresampled($tmp, $image, 0, 0, $x, $y, $width, $height, $w, $h); 
	        switch ($size["mime"]) {
	            case 'image/jpeg':
	                imagejpeg($tmp, $path, 100);
	                break;
	            case 'image/png':
	                imagepng($tmp, $path, 0);
	                break;
	            case 'image/gif':
	                imagegif($tmp, $path);
	                break;
	            default:
	                exit;
	            break;
	        }
	        return $path;
	        imagedestroy($image);
	        imagedestroy($tmp);
	    }


	    public function watermarkimages($uploaddir,$image_name){
			$masterURL =$uploaddir.$image_name;
			
			$i = strrpos($image_name,".");
			if (!$i) { return ""; }
			$l = strlen($image_name) - $i;
			$ext = substr($image_name,$i+1,$l);
			$masterExt = $ext;
			
			
			$path = base_url().'assets/admin-assets/admin-images/admin-settings-image/'.$this->config->item('watermark');
			
			$i = strrpos($this->config->item('watermark'),".");
			if (!$i) { return ""; }
			$l = strlen($this->config->item('watermark')) - $i;
			$ext = substr($this->config->item('watermark'),$i+1,$l);
			$waterExt = $ext;
			
			if($waterExt == 'png')$watermark = imagecreatefrompng($path);
			if($waterExt == 'jpg' || $waterExt == 'jpeg')$watermark = imagecreatefromjpeg($path);
			$watermark_width = imagesx($watermark);
			$watermark_height = imagesy($watermark);
			$image = imagecreatetruecolor($watermark_width, $watermark_height);
			if($masterExt == 'png')$image = imagecreatefrompng($masterURL);
			if($masterExt == 'jpg' || $masterExt == 'jpeg')$image = imagecreatefromjpeg($masterURL);
			$size = getimagesize($masterURL);
			$dest_x = round($size[0]/($size[0]/5));
			$dest_y = round($size[1]/($size[0]/5));
			imagecopymerge($image, $watermark, $dest_x, $dest_y,0, 0, $watermark_width, $watermark_height,20);
			imagejpeg($image, $masterURL);
		}
	}
?>