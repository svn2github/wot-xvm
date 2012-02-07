<?php 

define('LOG_ENABLED', true);

$start = microtime(true);
set_include_path('.' . DIRECTORY_SEPARATOR . './lib');

require_once('WotStatisticsServer.php');

$server = new WotStatisticsServer();
$server->ServeRequest($_SERVER["DOCUMENT_ROOT"]);

$end = microtime(true);
if (defined('LOG_ENABLED') && LOG_ENABLED) {
  error_log(sprintf("%s: %f\n", 
                    date('Y-m-d H:i:s'),
                    $end - $start),
            3, 
            'log/time.log');
};

?>