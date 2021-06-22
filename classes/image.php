<!-- top bar -->
<?php
	$corner_image = "images/male.jpg";
	if(isset($user_data)){
		$corner_image = $user_data['profile_image'];
	}

?>


<div id="blue_bar">
		<div style="width: 800px; margin: auto; font-size: 30px;">
			<a href="index.php" style="color: white;"> Readbook </a> 
			&nbsp &nbsp
			<input type="text" placeholder="Search for people" id="search_box" >
			<a href="profile.php">
			<img src="<?php echo $corner_image ?>" style="width: 60px;height:50px; float: right;">  
			</a>	
			<a href="logout.php">
			<span style="font-size: 20px;float:right;margin:8px;color:white;">Logout</span>
			</a>
		</div>
	</div>		
