<?php 
//sabit tanımlar vb. işlemler 
error_reporting(0);
define('MYSQL_HOST', 'localhost');
define('MYSQL_DB', 'en_challenge');
define('MYSQL_USER', 'root');
define('MYSQL_PASS', '');

define('PATH', str_replace('\\', '/', $_SERVER['DOCUMENT_ROOT']));
define('SYSTEM_PATH', PATH . '/en_challenge/inc');
define('CLASS_PATH', PATH . '/en_challenge/classes');
define('INTEGRATION_PATH', SYSTEM_PATH);

require "loader.php";