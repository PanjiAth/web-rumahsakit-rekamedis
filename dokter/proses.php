<?php
require_once "../_config/config.php";
require "../_assets/libs/vendor/autoload.php";

use Ramsey\Uuid\Uuid;
use Ramsey\Uuid\Exception\UnsatisfiedDependencyException;
// Generate a version 4 (random) UUID object


if(isset($_POST['add'])){
    $uuid = Uuid::uuid4()->toString();
    $nama=trim(mysqli_real_escape_string($con, $_POST['nama']));
    $spesialis=trim(mysqli_real_escape_string($con, $_POST['spesialis']));
    $alamat=trim(mysqli_real_escape_string($con, $_POST['alamat']));
    $no_telepon=trim(mysqli_real_escape_string($con, $_POST['no_telepon']));
    mysqli_query($con,"INSERT INTO tb_dokter (id_dokter,nama_dokter,spesialis,alamat,no_telp) VALUES ('$uuid','$nama','$spesialis','$alamat','$no_telepon')") or die (mysqli_error($con));
    echo "<script>window.location='data.php';</script>";    
}else if(isset($_POST['edit'])){
    $id =$_POST['id'];
    $nama=trim(mysqli_real_escape_string($con, $_POST['nama']));
    $spesialis=trim(mysqli_real_escape_string($con, $_POST['spesialis']));
    $alamat=trim(mysqli_real_escape_string($con, $_POST['alamat']));
    $no_telepon=trim(mysqli_real_escape_string($con, $_POST['no_telepon']));
    mysqli_query($con,"UPDATE tb_dokter SET nama_dokter='$nama',spesialis='$spesialis',alamat='$alamat',no_telp='$no_telepon' WHERE id_dokter='$id' ") or die (mysqli_error($con));
    echo "<script>window.location='data.php';</script>";    
}
    
?>