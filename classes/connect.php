<?php 

class Database
{

	private $host = "localhost";
	private $username = "root";
	private $password = "";
	private $db = "readbook_db";
 
	function connect()
	{

		$connection = mysqli_connect($this->host,$this->username,$this->password,$this->db);
		return $connection;
	}

//connect to db this file you can use every where for connect db you want only change instead of "readbook_db" to your db name 

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

// connect to database and read and write sql in db please create dabase "readbook_db"





