<!DOCTYPE html>
<html>
<head>
	<title>	Readbook | Signup</title>
</head>
<style >
	#bar{height: 100px;
	 background-color: rgb(255,69,1 );
	  color: white;
	   font-size: 40px; 
	   padding: 4px;

	}
	#signup_button{
		background-color: #42b72a;	
		width: 70px;
		text-align: center;
		padding: 4px; 
		border-radius: 4px;
		float: right; 
	}
	#bar2{
		background-color: white; 
		font-weight: bold;
		width: 800px;
		 height: 580px;
		 margin: auto; 
		 margin-top: 50px;"
		 padding: 10px;
		 padding-top: 50px;
		 text-align: center;
		}

	#text {
		height: 40px;
		width: 300px; 
		border-radius: 4px;
		border: solid 1px #aaa;
		padding: 4px;
		font-size: 14px;
	}
	
	#button {
		background-color: rgb(255,69,1 );
		height: 40px;		
		width: 300px;
		border-radius: 4px;
		font-weight: bold;
		border: none; 
		color: white;
	}
	

</style>

<body style="font-family: tahoma;background-color: #e9ebee;">
		
		<div id="bar">

			<div style="font-size: 40px;">Readbook</div>
		
			<div id="signup_button">Log in</div>
			</a>
		</div>

		<div id="bar2">
			
			Sign up to Mybook<br><br>

				<input value=">" name="first_name" type="text" id="text" placeholder="First name"><br><br>
				<input value="<>" name="last_name" type="text" id="text" placeholder="Last name"><br><br>

				<span style="font-weight: normal;">Gender:</span><br>
				<select id="text" name="gender">
					
					<option></option>
					<option>Male</option>
					<option>Female</option>

				</select>
				<br><br>
				<input value="" name="email" type="text" id="text" placeholder="Email"><br><br>
				
				<input name="password" type="password" id="text" placeholder="Password"><br><br>
				<input name="password2" type="password" id="text" placeholder="Retype Password"><br><br>

				<input type="submit" id="button" value="Sign up">
				<br><br><br>

		</div>

	</body>


</html> 