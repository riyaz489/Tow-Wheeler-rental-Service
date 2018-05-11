<?php require "config/config.php";
?>

<?php  
if ((isset($_POST['submit'])))
{
    $name=$_POST['name'];
    $email=$_POST['email'];
    $phone=$_POST['phone'];
    $from=$_POST['from'];
	$to=$_POST['to'];
	$comment=$_POST['comments'];
	$hem_name= $_FILES['my_file']['name'];
    $hem_tmp=$_FILES['my_file']['tmp_name'];
    $hem_type= $_FILES['my_file']['type'];
	$hem_size=$_FILES['my_file']['size'];
	$hem_ext= pathinfo($hem_name, PATHINFO_EXTENSION);
	$final_file="customer/".$hem_name;
	$upload=move_uploaded_file($hem_tmp,$final_file);

	$riyaz_name= $_FILES['my_file1']['name'];
    $riyaz_tmp=$_FILES['my_file1']['tmp_name'];
    $riyaz_type= $_FILES['my_file1']['type'];
	$riyaz_size=$_FILES['my_file1']['size'];
	$riyaz_ext= pathinfo($riyaz_name, PATHINFO_EXTENSION);
	$final_file1="customer/".$riyaz_name;
	$upload=move_uploaded_file($riyaz_tmp,$final_file1);


	$query="INSERT INTO customer(name,email,phone,frm,t,id,dl,comment) VALUES('$name','$email','$phone','$from','$to','$final_file','$final_file1','$comment')";
	$fire=mysqli_query($con,$query)or die("canoot inserted".mysqli_error($con));
	
}   
?>





<?php
 
 error_reporting(E_ALL);
 ini_set('display_errors', 1);
 
if(isset($_FILES) && (bool) $_FILES) {
  
	$allowedExtensions = array("pdf","doc","docx","gif","jpeg","jpg","png");
	
	$files = array();
	foreach($_FILES as $name=>$file) {
		$file_name = $file['name']; 
		$temp_name = $file['tmp_name'];
		$file_type = $file['type'];
		$path_parts = pathinfo($file_name);
		$ext = $path_parts['extension'];
		if(!in_array($ext,$allowedExtensions)) {
			die("File $file_name has the extensions $ext which is not allowed");
		}
		array_push($files,$file);
	}
	$str=rand(1,10000);
	// email fields: to, from, subject, and so on
	$id=$_POST['msg'];
	$to1 = $_POST['email'];
	$from = "riyaz489.rk@gmail.com"; 
    $subject ="customer detail";
     $subject1="booking details";
    $message1 = nl2br("\n\nhello".$_POST['name']."\n your order id is ".$str." enjoy your ride \n we hope you will use our service in future");
    $message=nl2br("\n\nhello store owner you got new customer \n name:".$_POST['name']."\n mobile number:".$_POST['phone']
     ."\n from:".$_POST['from']."\n to:".$_POST['to']."\n another requirements : ".$_POST['comments']."\n also you can get his id in attachments below\n"
 );
$sname="";
$smail="";
$vname="";
$color="";
$price="";
$address="";
 $con=new mysqli("localhost","riyaz","riyaz","rent") or die("can't connect");

 $veh=$con->query("select * from vehicles where id=".$id) or die("can't fecth result".$id);
 while($row=$veh->fetch_array()){

	$sname.=$row[1];
$smail.=$row[11];
$vname.=$row[4];
$color.=$row[6];
$price.=$row[8];
$address.=$row[2];

} 
$message1.=nl2br("\n your store location is: ".$address."\n  your store name is: ".$sname."\n\n");
$message.=nl2br("\n\n vehicle name is: ".$vname."\n  vehicle colour is: ".$color."\n price is: ".$price."\n\n\n your vehicle id is:".$str."\n\n");
	$headers = "From: $from";
	$to=$smail;
	// boundary 
	$semi_rand = md5(time()); 
	$mime_boundary = "==Multipart_Boundary_x{$semi_rand}x"; 
	 
	// headers for attachment 
	$headers .= "\nMIME-Version: 1.0\n" . "Content-Type: multipart/mixed;\n" . " boundary=\"{$mime_boundary}\""; 
	 
	// multipart boundary 
	$message = "This is a multi-part message in MIME format.\n\n" . "--{$mime_boundary}\n" . "Content-Type: text/plain; charset=\"iso-8859-1\"\n" . "Content-Transfer-Encoding: 7bit\n\n" . $message . "\n\n"; 
	$message .= "--{$mime_boundary}\n";
	 
	// preparing attachments
	for($x=0;$x<count($files);$x++){
		$file = fopen($files[$x]['tmp_name'],"rb");
		$data = fread($file,filesize($files[$x]['tmp_name']));
		fclose($file);
		$data = chunk_split(base64_encode($data));
		$name = $files[$x]['name'];
		$message .= "Content-Type: {\"application/octet-stream\"};\n" . " name=\"$name\"\n" . 
		"Content-Disposition: attachment;\n" . " filename=\"$name\"\n" . 
		"Content-Transfer-Encoding: base64\n\n" . $data . "\n\n";
		$message .= "--{$mime_boundary}\n";
	}
	// send
	 
	$ok = mail($to1, $subject1, $message1, $headers); 
	
	$ok2=mail($to, $subject, $message, $headers); 

	if($ok && $ok2){

		header("Location:welcome.php?hl=".$str);
	}
	else {echo "error";}
}	
 
?>


