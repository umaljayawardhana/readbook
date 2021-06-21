<?php


    session_start();
    //unset($_SESSION['readbook_userid']); //logout

    //print_r($_SESSION);
    //$_SESSION['readbook_userid'] == "";
    include("classes/connect.php");
    include("classes/login.php");
    include("classes/user.php");
    include("classes/post.php");

    //for posting starts here 
	if($_SERVER['REQUEST_METHOD'] == "POST"){


        if(isset($_FILES['file']['name']) && $_FILES['file']['name'] != ""){ //check file in

            $filename = $_FILES['file']['name'];
            move_uploaded_file($_FILES['file']['tmp_name'], "uploads/". $filename );

        }else{
                echo "<div style='text-align:center;font-size:12px;color:white;background-color:grey;'>";
				echo "<br>The following errors occured:<br><br>";
				echo "Please add a valid image !";
				echo "</div>";
        }
       

    }

    $login = new Login();
    $user_data = $login->check_login($_SESSION['readbook_userid']);

?>

<!DOCTYPE html>
	<html>
	<head>
		<title>Change Profile Image | ReadBook</title>
	</head>

	<style type="text/css">
		
		#blue_bar{

			height: 50px;
			background-color: rgb(51, 168, 255);;
			color: #d9dfeb;

		}

		#search_box{

			width: 400px;
			height: 20px;
			border-radius: 5px;
			border:none;
			padding: 4px;
			font-size: 14px;
			background-image: url(search.png);
			background-repeat: no-repeat;
			background-position: right;

		}


	
		#post_button{

			float: right;
			background-color: rgb(51, 168, 255);
			border:none;
			color: white;
			padding: 4px;
			font-size: 14px;
			border-radius: 2px;
			width: 80px;
			cursor: pointer;
		}
 
 		#post_bar{

 			margin-top: 20px;
 			background-color: white;
 			padding: 10px;
 		}

 		#post{

 			padding: 4px;
 			font-size: 13px;
 			display: flex;
 			margin-bottom: 20px;
 		}

	</style>

	<body style="font-family: tahoma; background-color: #d0d8e4;">

		<br>
		<?php include("header.php"); ?>

		<!--cover area-->
		<div style="width: 800px;margin:auto;min-height: 400px;">
			
			 
			<!--below cover area-->
			<div style="display: flex;">	

				<!--friends area-->			
				

				<!--posts area-->
 				<div style="min-height: 400px;flex:2.5;padding: 20px;padding-right: 0px;">
 					
                    <form method="post" enctype="multipart/form-data" >
                        <div style="border:solid thin #aaa; padding: 10px;background-color: white;">

                                <input type="file" name="file">
                                
                                <input id="post_button" type="submit" value="Change">
                                <br>
                            
                        </div>
                    </form>
 
	 				<!--posts-->
	 				

 				</div>
			</div>

		</div>

	</body>
</html>