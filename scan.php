<?php
    require __DIR__ . "/vendor/autoload.php";
    $qr =new Zxing\QrReader('download.png');
    $text = $qr->text();
    $a = json_decode($text);
    header("Location: http://localhost/revisi/menu.php?id=1"); 
?>