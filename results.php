<?php
include 'db_conn.php';
include 'validator.php';
include 'countries.php';
$prices=array();
if (isset($_POST['price_submit'])) {
		
	$name=$_POST['my_name'];        //defining vars
	$country=$_POST['country'];
	$new_countries=array_flip($countries); 			//formatting the way to show countries
	foreach ($new_countries as $key => $value) {
		if($country==$value){
		$country=$key;
		break;
		}
	}

	
	$currency=$_POST['currency'];
	$size_units=$_POST['size_units'];
	$steel_price=$_POST['steel_price'];
	$wood_price=$_POST['wood_price'];
	$plastic_price=$_POST['plastic_price'];
	$glass_price=$_POST['glass_price'];
	if(isset($_POST['other_material'])&& isset($_POST['other_price'])){
		$other_material=$_POST['other_material'];
		$other_price=$_POST['other_price'];			
	}
    ?>
	<!doctype html>
        <html>
            <head></head>
            <body>
<?php
	
	$prices=array($steel_price, $wood_price, $plastic_price, $glass_price, $other_price);
	
		if(validator($prices)!=TRUE){            //checks if inputs are numbers by the validator function
			echo "Your data is not valid";
			die;
		}
		//insert prices to database
	$insert_prices="INSERT INTO new_table (id, name, country, currency, steel, wood, plastic, glass, other_material, other_price) 
	VALUES ('', '$name','$country', '$currency','$steel_price', '$wood_price', '$plastic_price', '$glass_price', '$other_material', '$other_price')";
			$query=mysqli_query($conn_string, $insert_prices);  
		if(!$query){      //checks if the query succeded
			echo "Problem with insert<br>";
			}else{
				echo "Hello, $name from $country, your data is stored!<br>";
			}
		
									//output starts
		echo "Your prices are:";
		?>
        
        
		<table id="prices_table" border="solid 1px;">
			<tr>
				<th>Steel</th>
				<th>Wood</th>
				<th>Plastic</th>
				<th>Glass</th>
				<th><?php echo $other_material; ?></th>
			</tr>
			<tr>
				<td><?php echo $steel_price ." ". $currency?></td>
				<td><?php echo $wood_price ." ". $currency?></td>
				<td><?php echo $plastic_price ." ". $currency?></td>
				<td><?php echo $glass_price ." ". $currency?></td>
				<td><?php echo $other_price ." ". $currency?></td>
			</tr>
		</table>
		        <?php

}else{                   //if form is not submited
	echo "You need to fill the form first <br>";
	echo "<a href='1st_form.php'>Press here to go to the form</a>";
}
  ?>
  </body>
        </html>