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
			<img src="profilepic.jpg" style="width: 50px; float: right;">  
		</div>
	</div>		

	<!--Cover Area-->
	<br>
	<div style="width: 800px; margin: auto;  min-height: 400px;">
		
		<div style="background-color: white; text-align: center; font-size: 15px; color:  rgb(51, 168, 255)">
			<img src="miaback.jpg" style="width: 100%;">
			<img id="profile_pic" src="profilepic.jpg"> 
			<br>
			<div style="font-size:25px"> Mia Khalifa  </div>
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
						<img id="friends_img" src="user1.jpg"> <br>
						name_1												

					</div>

					<div id="friends">
						<img id="friends_img" src="user2.jpg"> <br>
						name_2												

					</div>

					<div id="friends">
						<img id="friends_img" src="user3.jpg"> <br>
						name_3										

					</div>

					<div id="friends">
						<img id="friends_img" src="user4.jpg"> <br>
						name_4													

					</div>
					
				</div>

			</div>

			<!-- Post Area-->


			<div style="min-height: 400px; flex: 2.5; padding: 20px padding-right: 0px; " >
			
				 <div style="border: solid thin #aaa;  padding: 10px; background-color:  white; margin-left: 20px; margin-top: 17px;">
			 	 <textarea  placeholder="Post Your stories ">  </textarea>
		 	 	 <input type="submit" id="post_button" value="Post">
		 	 	 <br>
			 	 	
			 	
			 	
			 	</div>	

			 	<!--posts-->

			 	<div id="post_bar">

			 		<!--posts 01 -->

			 		<div id="post">
			 			<div>
			 				<img src="user1.jpg" style="width: 75px; margin-right: 4px;">
			 			</div>
			 			<div>
			 				<div style="font-weight: bold;color: rgb(51, 168, 255);">name_1</div>
			 				write something
			 				<br> <br>

			 				<a href="" >Like</a>. <a href="" >Comment</a> . <span style="color: #999;">2021 May 13</span>
			 			</div>
			 		</div>

					<!--posts 02 -->

			 		<div id="post">
			 			<div>
			 				<img src="user2.jpg" style="width: 75px; margin-right: 4px;">
			 			</div>
			 			<div>
			 				<div style="font-weight: bold;color: rgb(51, 168, 255);">name_2</div>
			 				write something
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