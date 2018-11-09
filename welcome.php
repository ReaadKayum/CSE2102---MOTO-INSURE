<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
 <!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="Styles/RGIHP.css">
        <link rel="stylesheet" href="Styles/RGIDDmenu.css">
    <title>
        Reliance General Insurance 
    </title>
    </head>
<body>
        <header>
            <h1>Reliance General Insurance</h1>
        </header>

            <ul>

                <li><a href="#" target="_blank">Home</a></li>

                <li><a href="#" target="_blank">About</a>
                    <ul>
                        <li><a href="#">Company</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Services</a></li>
                    </ul>
                </li>

                <li><a href="#" target="_blank">Customer</a>
                    <ul>
                        <li><a href="#">Update Info</a></li>
                        <li><a href="#">Setting</a></li>
                    </ul>
                </li>

                <li><a href="#" target="_blank">Policies</a>
                    <ul>
                        <li><a href="#">Policy 1</a></li>
                        <li><a href="#">Policy 2</a></li>
                        <li><a href="#">Policy 3</a></li>
                        <li><a href="#">Policy 4</a></li>
                    </ul>   
                </li>

                <li><a href="logout.php">Log Out</a></li>

                <li><a href="reset-password.php" >Password Reset</a></li>
                
            </ul>
                    <br />
                    <br />
                    
</body>
</html>