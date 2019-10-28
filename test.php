<?php
header("Content-type: application/json; charset=utf-8");
$url = 'http://113.20.29.27:8088/SQS/api/action/readVacancy.php?id=1&random_no=3830';


$mysession = curl_init();
curl_setopt($mysession, CURLOPT_URL, $url);
curl_setopt($mysession, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($mysession, CURLOPT_CONNECTTIMEOUT , 10);
curl_setopt($mysession, CURLOPT_FAILONERROR, true);
$json = json_decode(curl_exec($mysession), true);


if (curl_errno($mysession)) {
echo "error: " . curl_error($mysession);
}else{
echo json_encode($json,JSON_PRETTY_PRINT);
}

?>