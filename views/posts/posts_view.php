 <div class="row">
    <div class="col-lg-8">
        <h1><?php echo $post['post_subject'];?></h1>
        <p class="lead">by <?php echo $post['name'];?></p>
        <hr>
            <p>Posted on <?php echo $post['post_created'];?></p>


            <p>Tags:
                <span class="badge badge-warning">alice</span>
                <span class="badge badge-primary">story</span>
                <span class="badge badge-danger">blog</span>
                <span class="badge badge-success">personal</span>

            </p>
        <hr>
        <p><?php echo $post['post_text'];?></p>
    </div>
    </div>
