<?php 

/* echo "<pre>";
print_r($list);

echo "</pre>"; */
 ?>
 
 <table>
 <tr>
	<td>Sr. No<td>
	<td>ID<td>
	<td>Username<td>
	<td>Password<td>
	<td>Edit<td>
	<td>Delete<td>
 </tr>
 <?php 
	$sr=1;
	foreach($list as $list)
	{
	 $id=$list->id;
	 $name=$list->name;
	 $password=$list->password;
 echo "<tr>
	<td>$sr<td>
	<td>$id<td>
	<td>$name<td>
	<td>$password<td>
	<td>" ?>
	
	<a href='<?php echo base_url('test/update/'.$list->id);?>'>Edit</a>
	<?php "<td>
	<td>" ?>
	
	<a href='<?php echo base_url('test/delete_info/'.$list->id);?>'>Delete</a>
	<?php "<td>
 </tr>";
 $sr++;
	}
 ?>
 </table>