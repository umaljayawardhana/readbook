<div id="friends">

    <?php 
            $image = "images/male.jpg";
            if($FRIEND_ROW['gender'] == "Female"){
                $image = "images/female.jpg";

            }

            ?>

    <img id="friends_img" src="<?php echo $image?>"> <br>
    <?php echo $FRIEND_ROW['first_name'] . " " . $FRIEND_ROW['last_name'] ?>

</div>