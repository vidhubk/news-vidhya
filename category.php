  <?php
session_start();
if ( $_SESSION['email']==true) {
  # code...
}else
header('location:admin_login.php');
$page='category';
 include('include/header.php');

  ?>
  <div style=" width: 70%; margin-left: 25%; margin-top: 10%; ">
  <div class="text-center">
    <h1>Manage Category</h1>
    
</div>
</div>
  <div style=" width: 70%; margin-left: 25%; margin-top: 10px; ">
  	    <div class="text-right" style= "margin-bottom:20px;">
  	    <a   class="btn btn-primary" href="addcaegory.php">Add Category</a> 
  	    	
   </div>
    <table class="table table-bordered">
       <tr>
         <th>Id</th>
         <th>Category Name</th>
         <th>Description</th>
         <th>Edit</th>
         <th>Delete</th>
       </tr>
        <?php
        include('db/connection.php');
        $query=mysqli_query($conn,"select * from category");
        while($row=mysqli_fetch_array($query)){

        ?>
        <tr>
          <td><?php echo $row['id'];?></td>
           <td><?php echo $row['category_name'];?></td>
            <td><?php echo substr($row['des'],0,200 );?></td>
            <td> <a href="edit.php?edit=<?php echo $row['id']; ?>" class="btn btn-info" >edit</a></td>
            <td> <a href="delete.php?del=<?php echo $row['id']; ?>" class="btn btn-danger" >delete</a></td>
        </tr>
       <?php } ?>  
    </table>

  </div>

  <?php
 include('include/footer.php')

  ?>