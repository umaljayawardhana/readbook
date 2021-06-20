<?php 

class Database
{

	private $host = "localhost"; //default
	private $username = "root"; // if ur db hasnt username this one is default
	private $password = "";  // default
	private $db = "readbook_db"; //which database name do you to access

	/*---Test quary ----
	$connection = mysqli_connect($host,$username,$password,$db);
	//$first_name = "chanuka";
	//$last_name = "mora";
	$query = "SELECT * FROM users";
	$result = mysqli_query($connection,$query); 
	print_r($result);
	while($row = mysqli_fetch_all($result)){
		echo "<pre>";
		print_r($row);
		echo "</pre>";
	} */
	
	function connect()
	{

		$connection = mysqli_connect($this->host,$this->username,$this->password,$this->db);
		return $connection;
	}

	function read($query)
	{
		$conn = $this->connect();
		$result = mysqli_query($conn,$query);

		if(!$result)
		{
			return false;
		}
		else
		{
			$data = false;
			while($row = mysqli_fetch_assoc($result))
			{

				$data[] = $row;

			}

			return $data;
		}
	}

	function save($query)
	{
		$conn = $this->connect();
		$result = mysqli_query($conn,$query);

		if(!$result)
		{
			return false;
		}else
		{
			return true;
		}
	}

}
/* -------write to database test---------
$DB = new Database();
$query = "INSERT INTO users (first_name, last_name) VALUES ('umal', 'jayawardhana')";
$DB->save($query); 

connect to database and read and write sql in db please create dabase "readbook_db"
	
--- Read from database test ----
$DB = new Database();

$query = "SELECT * FROM users";
$data = $DB->read($query);
echo "<pre>";
print_r($data);
echo "</pre>"; */


