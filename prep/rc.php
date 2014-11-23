<?php 
ini_set('auto_detect_line_endings', TRUE);
//make script safe after use by killing b4 it starts

// die("script stopped to avoid unsafe execution");
$file = 'routes.txt';
$handle = fopen($file, 'r');

$dblink = mysqli_connect('localhost', 'root', 'r00t', 'matatu');
if (!$dblink) {
	die('Could not connect ' .mysqli_connect_errno() . ': '.mysqli_connect_error() );
}
echo "<br> Successful connection to " .mysqli_get_host_info($dblink);
//print_r($handle);
// $q = mysqli_query($dblink, "select all from routes");
// var_dump($q);
die(" <br> dead script");
$size = 1024;
while(!feof($handle)){
	while (($buffer = fgets($handle, $size)) !== false) {
        $buffer;
        $data = explode(",", $buffer);
        //prepare insert statement
        $query = "INSERT INTO routes (route_id, route_short_name, route_long_name, route_desc) VALUES (?, ?, ?, ?)";
        $stmt = mysqli_prepare($dblink, $query);
        // var_dump($stmt);
        // die("");
        // siss = string, interger, string, string, the types of data to save in db
        mysqli_stmt_bind_param($stmt, 'siss', $val1, $val2, $val3, $val4);
        // echo $data[0];

        $val1 = $data[0];
        $val2 = $data[2];
        $val3 = $data[3];
        $val4 = $data[4];
        /* Execute the statement */
		mysqli_stmt_execute($stmt);

		/* close statement */
		mysqli_stmt_close($stmt);
        // print_r($data);
    }

}

// mysql_close($dblink);
    //$data.=fread($handle,$size);
//fclose($handle);

 ?>
