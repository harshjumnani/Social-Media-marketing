<?php
    
    define('PATH', realpath('.'));
    define('SUBFOLDER', false);
    define('URL', 'https://indifamesmm.in');
    define('DINAMICLISANCE', 'OSPK-RENTAL-USCPF-0009');
    
    ini_set('display_errors', 1);
    date_default_timezone_set('Asia/Kolkata');
    
    return [
      'db' => [
        'name'    =>  'indifame_OspKing',
        'host'    =>  'localhost',
        'user'    =>  'indifame_OspKing',
        'pass'    =>  'eEyPSIks&c03',
        'charset' =>  'utf8mb4' 
      ]
    ];
    