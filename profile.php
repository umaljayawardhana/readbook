<?php



	session_start();
	//unset($_SESSION['readbook_userid']); //logout

	//print_r($_SESSION);
	//$_SESSION['readbook_userid'] == "";
	include("classes/connect.php");
	include("classes/login.php");
	include("classes/user.php");
	include("classes/post.php");

	//check if user is logged in
	if(isset($_SESSION['readbook_userid']) && is_numeric($_SESSION['readbook_userid']) ){

		$id = $_SESSION['readbook_userid'];
		$login = new Login();
		$result = $login->check_login($id);
		//print_r($result);

		if($result){

			//retrive user data
			$user = new User();
			$user_data = $user->get_data($id);
			//echo "everythin is fine";

			if(!$user_data){
				header("Location: login.php");
				die;
			}

		}else{
			header("Location: login.php");
			//print_r($result);
			die;
		}
		
		
	}else {
		header("Location: login.php");
			die;
	}
			

	//for posting starts here 
	if($_SERVER['REQUEST_METHOD'] == "POST"){

		$post = new Post();
		
		$id = $_SESSION['readbook_userid'];
		$result = $post->create_post($id, $_POST);

		print_r($_POST);
	}



?>


<!DOCTYPE html>
<html>
<head>
	<title>Profile | Readbook</title>
</head>
<style>



	#blue_bar{
		height: 50px;
		background-color: rgb(51, 168, 255);
		color: #d9dfeb;
	}

	#search_box {
		border-radius: 5px;
		width: 400px;
		height: 20px;
		border: none;
		padding: 4px;
		background-image: url(search.png);
		background-repeat: no-repeat;
		background-position: right;
		
	}

	#profile_pic {
		width: 150px;
		margin-top: -200px;
		border-radius: 50%;
		border: solid 2px white;
	}

	#menu_button {
		width: 100px;
		display: inline-block;
		margin: 2px;
	}

	#friends_img {
		width: 75px;
		float: left;
		margin: 8px;
		height: 75px;
	}

	#friends_bar {
		font-size: 15px;

		background-color: white;
		min-height: 400px;
		margin-top: 20px;
		color: #aaa;
		padding: 8px;		
	}

	#friends {
		clear: both;
		font-size: 12px;
		font-weight: bold;
		color:  rgb(51, 168, 255);

	}

	textarea {
		width: 100%;
		border: none;
		font-family: tahoma;
		font-size: 14px;
		height: 60px ;



	}

	#post_button {
		float: right;
		background-color:  rgb(51, 168, 255);
		border: none;
		color: white;
		padding: 4px;
		font-size: 14px;
		border-radius: 2px;
		width: 50px;
	}


	#post_bar {
		margin-top: 20px;
		margin-left: 20px;
		background-color: white;
		padding: 10px;
	}

	#post {
		padding: 4px;
		font-size: 13px;
		display: flex;
		margin-bottom: 20px;
	}


	
</style>
<body style="font-family: tahoma; background-color: #d0d8e4;">
	<!--top bar-->
	<br>
	<div id="blue_bar">
		<div style="width: 800px; margin: auto; font-size: 30px;">
			Readbook  &nbsp &nbsp
			<input type="text" placeholder="Search for people" id="search_box" >	
			<img src="profilepic.jpg" style="width: 60px;height:50px; float: right;">  
			<a href="logout.php">
			<span style="font-size: 20px;float:right;margin:8px;color:white;">Logout</span>
			</a>
		</div>
	</div>		

	<!--Cover Area-->
	<br>
	<div style="width: 800px; margin: auto;  min-height: 400px;">
		
		<div style="background-color: white; text-align: center; font-size: 15px; color:  rgb(51, 168, 255)">
			<img src="coverPhoto.jpg" style="width: 100%;">
			<img id="profile_pic" src="profilepic.jpg"> 
			<br>
			<div style="font-size:25px"> <?php echo $user_data['first_name']. " ". $user_data['last_name'] ?>  </div>
			<br>
			 <div id="menu_button">Timeline </div>
			 <div id="menu_button">About </div>
			<div id="menu_button"> Friends </div>
			<div id="menu_button"> Photoes </div>
			<div id="menu_button"> Settings</div>
			 
		</div>
		<br>

		<!--below area -->
		<div style="display: flex;">

			<!--friends area -->

			<div style=" min-height: 400px; flex: 1;">

				<div id="friends_bar">
					Friends <br>

					<div id="friends">
						<img id="friends_img" src="Cristiano_Ronaldo.jpg"> <br>
						Cristiano Ronaldo												

					</div>

					<div id="friends">
						<img  id="friends_img" src="Neymar.jpg"> <br>
						Neymar
					</div>

					<div id="friends">
						<img id="friends_img" src="Xavi.jpg"> <br>
						Xavi									

					</div>

					<div id="friends">
						<img id="friends_img" src="Gareth_Bale.jpg"> <br>
						Gareth Bale													

					</div>
					
				</div>

			</div>

			<!-- Post Area-->


			<div style="min-height: 400px; flex: 2.5; padding: 20px; padding-right: 0px; " >
			
				 <div style="border: solid thin #aaa;  padding: 10px; background-color:  white;">

				 <form method="post">

			 	 	<textarea name="post"  placeholder="Post Your stories ">  </textarea>
		 	 	 	<input type="submit" id="post_button" value="Post">
		 	 	 	<br>
				   </form>
			 	 	
			 	
			 	
			 	</div>	

			 	<!--posts-->

			 	<div id="post_bar">

			 		<!--posts 01 -->

			 		<div id="post">
			 			<div>
			 				<img src="Cristiano_Ronaldo.jpg" style="width: 75px; margin-right: 4px;">
			 			</div>
			 			<div>
			 				<div style="font-weight: bold;color: rgb(51, 168, 255);">Cristiano Ronaldo</div>
			 				"For me, to watch Messi play is a pleasure – it’s like having an orgasm 
							 – it’s an incredible pleasure. He is always going forwards. He never passes 
							 the ball backwards or sideways.
							  He has only one idea, to run towards the goal. So as a football fan,
							   just enjoy the show."
			 				<br> <br>

			 				<a href="" >Like</a>. <a href="" >Comment</a> . <span style="color: #999;">2021 May 13</span>
			 			</div>
			 		</div>

					<!--posts 02 -->

			 		<div id="post">
			 			<div>
			 				<img src="Neymar.jpg" style="width: 75px; margin-right: 4px;">
			 			</div>
			 			<div>
			 				<div style="font-weight: bold;color: rgb(51, 168, 255);">Neymar</div>
			 				"For the world of football, Messi is a treasure because he is a role model for
							  children around the world… Messi will be the player to win the most Ballons d’Or in history. 
							  He will win five, six, seven. He is incomparable. He’s in a different league."
			 				<br> <br>

			 				<a href="" >Like</a>. <a href="" >Comment</a> . <span style="color: #999;">2021 May 13</span>
			 			</div>
			 		</div>

			 		
			 	</div>

			</div>
		</div>
	
	</div>   
		
</div>
</body>
</html> 