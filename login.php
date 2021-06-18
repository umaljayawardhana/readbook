

<html> 

<head>
	
	<title>Readbook | Log in</title>
</head>

<style>
	
	#bar{
		height:100px;
		background-color: rgb(255,69,1);
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
		border:solid 1px #aaa;
		padding: 4px;
		font-size: 14px;
	}

	#button{

		width: 300px;
		height: 40px;
		border-radius: 4px;
		font-weight: bold;
		border:none;
		background-color: rgb(255,69,1);
		color: white;
	}

</style>

<body style="font-family: tahoma;background-color: #e9ebee;">
	
	<div id="bar">

		<div style="font-size: 40px;">Readbook</div>
		<a href="signup.php">
		<div id="signup_button">Signup</div>
		</a>
	</div>

	<div id="bar2">
		
		<form method="post">
			Log in to Readbook<br><br>

			<input name="email"  type="text" id="text" placeholder="Email"><br><br>
			<input name="password"  type="password" id="text" placeholder="Password"><br><br>

			<input type="submit" id="button" value="Log in">
			<br><br><br>

		</form>
	</div>

</body>


</html>