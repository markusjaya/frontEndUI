<?php

$conn = mysqli_connect('localhost', 'root', '', 'shoping_cart');

if (!$conn) {
    die ("Koneksi gagal. " . mysqli_connect_error()); // close koneksi
}