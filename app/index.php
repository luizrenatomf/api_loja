<?php

require_once('inc/config.php');
require_once('inc/api_functions.php');

$variables = [
    'nome' => 'Luiz',
    'sobrenome' => 'Miranda'
];

$results = api_request('status', 'POST', $variables);

echo '<pre>';
print_r($results);