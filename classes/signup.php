<?php

 

class Signup{
     
    private $error = "";

    public function evaluate($data){ //data came from signup.php _post array

        foreach ($data as $key => $value) { //check data is empty or not
            
            if(empty($value)){

                $this->error = $this->error . $key . "is empty ! <br>";
            }

            if($key == "email"){
                if (!preg_match("/([\w\-]+\@[\w\-]+\.[\w\-]+)/",$value)) {
                    $this->error = $this->error . "invalid email address!<br>";
                }
            }

            if($key == "first_name")
			{
				if (is_numeric($value)) {
        
 					$this->error = $this->error . "first name cant be a number<br>";
    			}

    			if (strstr($value, " ")) {
        
 					$this->error = $this->error . "first name cant have spaces<br>";
    			}
 
			}

			if($key == "last_name")
			{
				if (is_numeric($value)) {
        
 					$this->error = $this->error . "last name cant be a number<br>";
    			}

    			if (strstr($value, " ")) {
        
 					$this->error = $this->error . "last name cant have spaces<br>";
    			}

			}


        }

        if($this->error == ""){ //data become a no errors 
            //no error
            $this->create_user($data); // run this function

        }else {
            return $this->error;
        }

    }

    public function create_user($data){
        //get data from $data arry "_POST and assign values and keys

        $first_name =$data['first_name'];
        $last_name =$data['last_name'];
        $gender =$data['gender'];
        $email =$data['email'];
        $password = $data['password'];

        //ceate these 
        $url_address =strtolower($first_name) . "." .strtolower($last_name); //convert all to lowercase
        $userid =$this->create_userid(); // run user id function to make random numbers (random user id algo)




        $query ="INSERT INTO users (userid,first_name,last_name,gender,email,password,url_address)
        VALUES ('$userid','$first_name','$last_name','$gender','$email','$password','$url_address')";

        //connect with database use to connect.php connecion class and save data to DB
        $DB = new Database();
        $DB->save($query);
    }

   
    private function create_userid(){

        $length = rand(4,19);
        $number = "";
        for ($i=0; $i <$length ; $i++) { 
            $new_rand = rand(0,9);
            $number = $number . $new_rand;
        }
        return $number; 
    }

}



?>  