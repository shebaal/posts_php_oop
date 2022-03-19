<?php require_once('./controller/DashboardAdd.php'); ?>
<?php
  $DashboardAdd = new DashboardAdd();
  $Response = [];
  $active = $DashboardAdd->active;
  $title = $_POST['title'];
  $content = $_POST['content'];
  $savepost = $DashboardAdd->saveAddPost('db_news',$title,$content,$date);
  // echo $savepost;
?>
<?php require('./nav.php'); ?>
<main role="main" class="container">
  <div class="container">
  <form class="mt-5" action="Addpost.php" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Title</label>
    <input type="text" class="form-control" name="title" aria-describedby="emailHelp" placeholder="title">
     </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Content</label>
    <input type="text" class="form-control"  name="content" placeholder="content">
  </div>
  <input type="text" class="form-control"  name="date" placeholder="content" hidden>
 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
  </div>
</main>
</body>
</html>
