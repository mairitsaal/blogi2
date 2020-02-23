<?php foreach ($posts as $post):?>
<div class="row">
    <h1><?php echo $post['post_subject']?></h1>
    <p><?php echo $post['post_text']?></p>
    <div>
        <div>Posted:
        <span class="badge badge-warning"><?php echo $post['post_created']?>
        </span>
        </div>
        <div>Tags:
            <span class="badge badge-warning">alice</span>
            <span class="badge badge-primary">story</span>
            <span class="badge badge-danger">blog</span>
            <span class="badge badge-success">personal</span>

        </div>
    </div>
</div>
<hr>
<?php endforeach;?>
