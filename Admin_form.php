<?php
include 'countries.php';
?>

<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="css/a_style.css" />
        <title>Admin form</title>
    </head>
    <body>
    	  <div id="container">
        <h1>Welcome to Pricer</h1>
        <p><b>where auto pricing gets DONE!</b></p><br />
        <h3>Please fill in your details below:</h3>
        
        <form method="post" name="Admin_form" action="results.php" > 
          
           <label for="my_name">Enter your name:</label>    <!--name-->
                	<input type="text" id="my_name" name="my_name" />
			
			<div id="Measurement_units">
				 <h4> Choose your preffered measurement units: </h4>
                    <input type="radio" name="size_units" value="meters" checked="checked"> Meters <br />
                	<input type="radio" name="size_units" value="feet" /> Feet <br /> <br />
                	
                	<div id="country">
                		<label for="country">Select your country</label>
                		<select name="country" id="country">
                			<?php
                			foreach ($countries as $key => $value) {
								echo "<option value=" . $key. ">" . $value . "</option>";
							}
                			?>
                			
                		</select>
                	</div>
             
            </div>
                   <br> <b>Select your currency:</b>           <!--currency selection-->
                  <select name="currency">
                    <option value="dollars">Dollars</option>
                    <option value="Euros">Euros</option>         
                  </select><br>
               
               <div id="prices">   
               	<h4> type in your prices for 1 square meter/foot, next to each material:</h4>
                    <label for="steel">Steel: </label>            <!--price fields-->
                    	<input type='text' name='steel_price' id='steel'/><br>
                    <label for="wood">wood: </label>
                    	<input type='text' name='wood_price' id='wood'/><br>
                    <label for="plastic">plastic: </label>
                    	<input type='text' name='plastic_price' id='plastic'/><br>
                    <label for="glass">glass: </label>
                    	<input type='text' name='glass_price' id='glass'/><br>
                	<label for="other_material">Other Material:</label>
                		<input type="text" name="other_material" id="other_material" />
            		<label for="other_price">Other Material's Price:</label>
                		<input type="text" name="other_price" id="other_price" /><br>

                  <input type="submit" name="price_submit" value="submit prices" />
                </form>
            </div>
    </body>
</html>

                
               
                	
                	           
                	           	
            


               