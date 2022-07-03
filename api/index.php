<?php

header("Content-Type:application/json");

$data['status'] = 'SUCCESS';
$data['method'] = $_SERVER['REQUEST_METHOD'];

if($data['method'] == 'GET')
{
    $data['data'] = $_GET;
} else if($data['method'] == 'POST') {
    $data['data'] = $_POST;
}

echo json_encode($data);