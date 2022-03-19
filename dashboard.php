<?php require_once('./controller/Dashboard.php'); ?>
<?php
  $Dashboard = new Dashboard();
  $Response = [];
  $active = $Dashboard->active;
  $News = $Dashboard->getNews();
?>
<?php require('./nav.php'); ?>
<main role="main" class="container h-100 mh-100 overflow-auto">
  <div class="container">
    <div class="row mt-5">
      <div class="col-xs-12 col-sm-12 col-md-12 col-xl-12 col-lg-12">
        <h2>Post</h2>
        <hr>
      </div>
    </div>
    <div class="row">
      <?php if ($News['status']) : ?>
        <?php foreach ($News['data'] as $new) :  ?>
          <div class="col-xs-12 col-sm-12 col-md-12 col-xl-4 col-lg-4">
            <div class="card shadow-lg p-3 mb-5 bg-white rounded">
              <div class="news_title">
                <h3><?php echo ucwords($new['title']); ?></h3>
              </div>
              <div class="news_body">
                <p><?php echo $new['content']; ?> </p>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      <?php endif;  ?>
    </div>

    <a type="button" class="btn btn-primary" href="AddPost.php">Add</a>
  </div>
</main>
</body>
</html>
