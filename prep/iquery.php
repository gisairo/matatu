<?php
define('DB_HOST', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', 'r00t');
define('DB_DEFAULT_DB', 'matatu');

function iQuery($sql, $arrParams, $arrBindNames=false) {
    $result = new stdClass();
    $mysqli = @new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_DEFAULT_DB);
    if (mysqli_connect_errno()) {
        $result->error = 'Connection failed: '.mysqli_connect_error();
        return $result;
    }
    if ($stmt = $mysqli->prepare($sql)) {
         $arrParams = getRefArray($arrParams);
        $method = new ReflectionMethod('mysqli_stmt', 'bind_param');
        $method->invokeArgs($stmt, $arrParams);    
        $stmt->execute();
        $meta = $stmt->result_metadata();
        if (!$meta) {            
            $result->affected_rows = $stmt->affected_rows;
            $result->insert_id = $stmt->insert_id;
        } else {
            $stmt->store_result();
            $params = array();
            $row = array();
            if ($arrBindNames) {
                for ($i=0,$j=count($arrBindNames); $i<$j; $i++) {
                    $params[$i] = &$row[$arrBindNames[$i]];
                }
            } else {
                while ($field = $meta->fetch_field()) {
                    $params[] = &$row[$field->name];
                }
            }
            $meta->close();
            $method = new ReflectionMethod('mysqli_stmt', 'bind_result');
            $method->invokeArgs($stmt, $params);            
            $result->rows = array();
            while ($stmt->fetch()) {
                $obj = new stdClass();
                foreach($row as $key => $val) {
                    $obj->{$key} = $val;
                }
                $result->rows[] = $obj;
            }
            $stmt->free_result();
        }
        $stmt->close();
    }
    $mysqli->close();
    return $result;
}

function getRefArray($a) { 
    if (strnatcmp(phpversion(),'5.3')>=0) { 
        $ret = array();
        foreach($a as $key => $val) {
            $ret[$key] = &$a[$key];
        }
        return $ret; 
    } 
    return $a; 
}

// $arrParams = array('siss','','', '', '');
// $result = iQuery( 'SELECT * FROM `test_table` WHERE `sex`=? AND `active`=?', $arrParams);    
$arrParams = null;
$result = iQuery( 'SELECT * FROM `routes', '');

// print_r($result->rows);
$js = json_encode($result->rows);
echo $js;

// echo phpinfo();