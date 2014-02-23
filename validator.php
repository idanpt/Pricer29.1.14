<?php
	function validator($prices)
	{
		$name=$_POST['my_name'];        //defining vars
		$currency=$_POST['currency'];
		$steel_price=$_POST['steel_price'];
		$wood_price=$_POST['wood_price'];
		$plastic_price=$_POST['plastic_price'];
		$glass_price=$_POST['glass_price'];	
		
		$prices=array($steel_price, $wood_price, $plastic_price, $glass_price);	
		
		foreach ($prices as $key => $value) {
			 if (!is_numeric($value)) {
			 	return False; exit;}
		} 							
			 	
			 	return TRUE;
	
			
	}
	?>