<?php
session_start();
include('../connect.php');
$a = $_POST['name'];
$k = $_POST['last_name'];
$b = $_POST['report'];
$c = $_POST['yoa'];
$d = $_POST['parent'];
$e = $_POST['dob'];
$f = $_POST['student_id'];
$g = $_POST['gender'];
// query

$file_name  = strtolower($_FILES['file']['name']);
$file_ext = substr($file_name, strrpos($file_name, '.'));
$prefix = 'your_site_name_'.md5(time()*rand(1, 9999));
$file_name_new = $prefix.$file_ext;
$path = '../uploads/'.$file_name_new;


 
$file_name1  = strtolower($_FILES['file1']['name']);
$file_ext1 = substr($file_name1, strrpos($file_name1, '.'));
$prefix1 = 'your_site_name_'.md5(time()*rand(2, 8888));
$file_name_new1 = $prefix1.$file_ext1;
$path1 = '../uploads/'.$file_name_new1;

    /* check if the file uploaded successfully */
    if(@move_uploaded_file($_FILES['file']['tmp_name'], $path)) {
      if(@move_uploaded_file($_FILES['file1']['tmp_name'], $path1)) {
  //do your write to the database filename and other details   
$sql = "INSERT INTO student (name,last_name,report,yoa,parent,dob,student_id,gender,file,file1) VALUES (:a,:k,:b,:c,:d,:e,:f,:g,:h,:i)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a,':k'=>$k,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g,':h'=>$file_name_new,':i'=>$file_name_new1));
header("location: students.php");
      }
  } 
 

//  /* check if the file uploaded successfully */
//  if(@move_uploaded_file($_FILES['file1']['tmp_name1'], $path1)) {

//   //do your write to the database filename and other details   
// $sql = "INSERT INTO student (name,last_name,report,yoa,parent,dob,student_id,gender,file1) VALUES (:a,:k,:b,:c,:d,:e,:f,:g,:i)";
// $q = $db->prepare($sql);
// $q->execute(array(':a'=>$a,':k'=>$k,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$e,':f'=>$f,':g'=>$g,':i'=>$file_name_new1));
// header("location: students.php");

//   }
?>