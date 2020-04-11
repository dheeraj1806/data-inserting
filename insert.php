<html>
<body>
<form method="post" action="insert.php" enctype="multipart/form-data">
	<table align="center" border="1" style="width":70%; margin-top:40px;">
	
	        <tr>
			<th>Shoe name</th>
			<td> <input type="text" name="shoename"  required> </td>
			</tr>
			<tr>
				<th>Brand Name</th>
				<td><input type="text" name="brandname"  required> </td>
			</tr>
			<tr>
				<th>Shoe color</th>
				<td><input type="text" name="shoecolor"  required></td>
			</tr>
			<tr>
				<th>Gender</th>
				<td><input type="text" name="gender"  required></td>
			</tr>
			<tr>
				<th>shoe size</th>
				<td><input type="text" name="shoesize"  required></td>
			</tr>
			<tr>
				<th>link</th>
				<td><input type="text" name="link"  required></td>
			</tr>
			<tr>
				<th>rating</th>
				<td><input type="text" name="rating"  required></td>
			</tr>
				<td>Category</td>
		<td>
			<select name="category" required>
				<option value="casual">Casual</option>
				<option value="sneaker">Sneaker</option>
				
				</select>
				
			
			<tr>
				<th>Image</th>
				<td><input type="file" name="file_img[]" multiple></td>
			</tr>
			<tr>
				<td colspan="2" align="center"> <input type="submit" name="submit" value="Submit"></td>
			</tr>
		
	
	</table>
	
	</form>
	</body>
	</html>
	<?php		
    
	include('db.php');
	if(isset($_POST['submit']))
	{ 
        
		
			$shoename= $_POST['shoename'];
			$brandname= $_POST['brandname'];
			$shoecolor= $_POST['shoecolor'];
			$gender= $_POST['gender'];
			$shoesize= $_POST['shoesize'];
			$link= $_POST['link'];
			$rating= $_POST['rating'];
			$category= $_POST['category'];

			
			for($i=0;  $i<count($_FILES["file_img"]["name"]); $i++)
			{	
			$filetmp = $_FILES["file_img"]["tmp_name"][$i];
			$filename = $_FILES["file_img"]["name"][$i];
			$filetype = $_FILES["file_img"]["type"][$i];
			$filepath = "dataimg/".$filename;
			
			
			
			move_uploaded_file($filetmp,$filepath);
			
			$query="INSERT INTO shooz_name_list(shoename, brandname, shoecolor, gender, shoesize,link,rating,category,image,image1,image2) VALUES ('$shoename','$brandname','$shoecolor','$gender','$shoesize','$link','$rating','$category','$filename','$filepath','$filetype')";
			$con = mysqli_connect('localhost','root','','my_shooz');
			
		    }
			$run= mysqli_query($con,$query);
			if($run == true)
			{
					?>
					<script>
					alert('Data Inserted Successfully.');
					</script>
			<?php
			}
			else {
    echo "Error: " . $sql . "<br>" . mysqli_error($con);
}
	}
			?>		
	