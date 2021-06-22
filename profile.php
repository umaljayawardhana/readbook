<?php



	session_start();
	//unset($_SESSION['readbook_userid']); //logout

	//print_r($_SESSION);
	//$_SESSION['readbook_userid'] == "";
	include("classes/connect.php");
	include("classes/login.php");
	include("classes/user.php");
	include("classes/post.php");
	include("classes/image.php");


	$login = new Login();
	$user_data = $login->check_login($_SESSION['readbook_userid']);

	//for posting starts here 
	if($_SERVER['REQUEST_METHOD'] == "POST"){

		$post = new Post();
		
		$id = $_SESSION['readbook_userid'];
		$result = $post->create_post($id, $_POST);

		if($result == ""){
			header("Location: profile.php");
			die;
		

		//print_r($_POST);
		}else{
				echo "<div style='text-align:center;font-size:12px;color:white;background-color:grey;'>";
				echo "<br>The following errors occured:<br><br>";
				echo $result;
				echo "</div>";
		}
	}

	//collect post

	$post = new Post();
		
	$id = $_SESSION['readbook_userid'];
	$posts = $post->get_posts($id);

	//collect friends
	$user = new User();
		
	$id = $_SESSION['readbook_userid'];
	$friends = $user->get_friends($id);

	$image_class = new Image();

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
	<?php
	include("header.php");
	?>

	<!--Cover Area-->
	<br>
	<div style="width: 800px; margin: auto;  min-height: 400px;">
		
		<div style="background-color: white; text-align: center; font-size: 15px; color:  rgb(51, 168, 255)">

			<?php

				$image = "images/cover_image.jpg";
				if(file_exists($user_data['cover_image'])){
					$image = $image_class->get_thumb_cover($user_data['cover_image']);
				}
			?>	
			<img src="<?php echo $image?>" style="width: 100%;">
			<span style="font-size: 12px;">

				<?php

					$image = "images/male.jpg";
					if($user_data['gender'] == "Female"){
						$image = "images/female.jpg";
					}
					if(file_exists($user_data['profile_image'])){
						$image = $image_class->get_thumb_profile($user_data['profile_image']); 
					}
				?>	

			 <img id="profile_pic" src="<?php echo $image?>"> </br>

			 <a style="text-decoration: none; color:#f0f ;" href="change_profile_image.php?change=profile"> Change Profile Image </a> |
			 <a style="text-decoration: none; color:#f0f ;" href="change_profile_image.php?change=cover"> Change Cover </a>
			 </span>
			<br>
			<div style="font-size:25px"> <?php echo $user_data['first_name']. " ". $user_data['last_name'] ?>  </div>
			<br>
			<a href="index.php"> <div id="menu_button">Timeline </div></a>
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


					<?php
					 if($friends){

						foreach ($friends as $FRIEND_ROW) {
							# code...
							//$user = new User();
							//$ROW_USER = $user->get_user($ROW['userid']);

							include("user.php");
						}
					 }

	
					 ?>
			 		

					

				
					
				</div>

			</div>

			<!-- Post Area-->


			<div style="min-height: 400px; flex: 2.5; padding: 20px; padding-right: 0px; " >
			
				 <div style="border: solid thin #aaa;  padding: 10px; background-color:  white;">

				 <form method="post">

			 	 	<textarea name="post"  placeholder="whats on my mind ">  </textarea>
		 	 	 	<input type="submit" id="post_button" value="Post">
		 	 	 	<br>
				   </form>
			 	 	
			 	
			 	
			 	</div>	

			 	<!--posts-->

			 	<div id="post_bar">

			 		<!--posts 01 -->

					 <?php
					 if($posts){

						foreach ($posts as $ROW) {
							# code...
							$user = new User();
							$ROW_USER = $user->get_user($ROW['userid']);

							include("post.php");
						}
					 }

	
					 ?>
			 		

					<!--posts 02 -->

			 		

			 		
			 	</div>

			</div>
		</div>
	
	</div>   
		
</div>
</body>
</html> 