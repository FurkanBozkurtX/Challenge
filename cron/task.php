<?php 
require "../inc/config.php";

$Provider1="http://www.mocky.io/v2/5d47f235330000623fa3ebf7";

$Provider2="http://www.mocky.io/v2/5d47f24c330000623fa3ebfa";

$Task=new Service();
$Task->GTask($Provider2,"Provider2");