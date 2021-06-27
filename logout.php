<?php 

session_start();

if(isset($_SESSION['readbook_userid']))
{
	$_SESSION['readbook_userid'] = NULL;
	unset($_SESSION['readbook_userid']);

}

header("Location: login.php");
die;
