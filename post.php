<div id="post">
        <div>
        <?php 
            $image = "images/male.jpg";
            if($ROW_USER['gender'] == "Female"){
                $image = "images/female.jpg";

            }

            ?>

            <img src="<?php echo $image ?>" style="width: 75px; margin-right: 4px;">
        </div>
        <div>
            <div style="font-weight: bold;color: rgb(51, 168, 255);">
            <?php echo $ROW_USER['first_name'] . " " . $ROW_USER['last_name']; ?>
            </div>
            <?php echo $ROW['post']?>
            <br> <br>

            <a href="" >Like</a>. <a href="" >Comment</a> .
             <span style="color: #999;"><?php echo $ROW['date'] ?></span>
        </div>
    </div>