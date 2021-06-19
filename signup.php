<?php

	include("classes/connect.php");
	include("classes/signup.php");

	$first_name = "";
	$last_name = "";
	$gender = "";
	$email = "";

	//_server arry in key is request method and value is post

	if($_SERVER['REQUEST_METHOD'] == 'POST'){ //click signup button to work post 
		//affter click signup button work signup class and send _post array data to evaluvate function $data variable

		$signup = new Signup();
		$result = $signup->evaluate($_POST);

		if($result != ""){

			
			echo "<br>The following erros occured : <br><br>";
			echo $result;
			
		} else{
			header("Location: profile.php");
			die;
		}


		//_post variable array values assign here

		$first_name = $_POST['first_name'];
		$last_name = $_POST['last_name'];
		$gender = $_POST['gender'];
		$email = $_POST['email'];

	}

	
	
?>




<!DOCTYPE html>
<html lang="en">

	<head>
		
		<title>Readbook | Signup</title>
	</head>

	<style>
		
		#bar{
			height:100px;
			background-color: rgb(255,69,1 );
			color: #d9dfeb;
			padding: 4px;
		}

		#signup_button{

			background-color: #42b72a;
			width: 70px;
			text-align: center;
			padding:4px;
			border-radius: 4px;
			float:right;
		}

		#bar2{

			background-color: white;
			width:800px;
			margin:auto;
			margin-top: 50px;
			padding:10px;
			padding-top: 50px;
			text-align: center;
			font-weight: bold;

		}

		#text{

			height: 40px;
			width: 300px;
			border-radius: 4px;
			border:solid 1px #ccc;
			padding: 4px;
			font-size: 14px;
		}

		#button{

			width: 300px;
			height: 40px;
			border-radius: 4px;
			font-weight: bold;
			border:none;
			background-color: rgb(255,69,1 );
			color: white;
		}

	</style>

	<body style="font-family: tahoma;background-color: #e9ebee;">
		
		<div id="bar">

			<div style="font-size: 40px;">Readbook</div>
			<a href="login.php">
			<div id="signup_button">Log in</div>
			</a>
		</div>

		<div id="bar2">
			
			Sign up to Readbook<br><br>

			<form method="post" action="">

				<input value="<?php echo $first_name?>"  name="first_name" type="text" id="text" placeholder="First name"><br><br>
				<input value="<?php echo $last_name?>" name="last_name" type="text" id="text" placeholder="Last name"><br><br>

				<span style="font-weight: normal;">Gender:</span><br>
				<select id="text" name="gender">
					
					<option> <?php echo $gender?></option>
					<option>Male</option>
					<option>Female</option>

				</select>
				<br><br>
				<input  name="email" type="text" id="text" placeholder="Email"><br><br>
				
				<input value="<?php echo $email?>" name="password" type="password" id="text" placeholder="Password"><br><br>
				<input name="password2" type="password" id="text" placeholder="Retype Password"><br><br>

				<input type="submit" id="button" value="Sign up">
				<br><br><br>

			</form>

		</div>

	</body>


</html>