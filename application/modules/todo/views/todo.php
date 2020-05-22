<div class="static-content-wrapper">
    <div class="static-content">
        <div class="page-content">
            <ol class="breadcrumb">
                <li class=""><a href="">Home</a></li>
                <li class=""><a href="">Manage Tasks</a></li>
                <li class="active"><a href="">View All Tasks</a></li>
            </ol>
            <div class="container-fluid">
                <div data-widget-group="group1">
                    <div class="row">
                        <div class="col-md-12">
                            <a class="btn btn-success" data-toggle="modal" href="#myModal"><i class="fa fa-plus-circle" aria-hidden="true"></i> Create New Task</a>
                            <a href="<?= bs('todo/completed_tasks') ?>" class="btn btn-info"> <i class="fa fa-check-circle" aria-hidden="true"></i> All Completed Tasks</a>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h2>All Tasks</h2>
                                    <div class="panel-ctrls"></div>
                                </div>

                                <div class="panel-body no-padding">
                                    <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Task Name</th>
                                                <th>Task image</th>
                                                <th>Description</th>
                                                <th>Task Status</th>
                                                <th>Created</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php if (count($tasks) > 0) : ?>

                                                <?php foreach ($tasks as $task) : ?>

                                                    <tr>
                                                        <td class="p-name">
                                                            <?= $task->task_name ?>
                                                        </td>
                                                        <td class="p-team">
                                                            <?php
                                                            if ($task->task_img != '') :
                                                                ?>
                                                                <img src="<?= $task->task_img ?>" alt="task image" width="70">
                                                            <?php
                                                            else :
                                                                ?>
                                                                <img src="<?= base_url() ?>public/assets/img/Task.png" alt="task image" width="60">
                                                            <?php endif;  ?>
                                                        </td>
                                                        <td>
                                                            <?= $task->description ?>
                                                        </td>
                                                        <td>
                                                            <span class="btn btn-info btn-sm"><?= $task->task_status ?></span>
                                                        </td>
                                                        <td>
                                                            <?= date('d-m-Y', strtotime($task->created_at)) ?>
                                                        </td>
                                                        <td>
                                                            <a href="<?= bs('todo/mark_completed/' . $task->id . '') ?>" class="btn btn-success-alt btn-sm"><i class="fa fa-check-circle" aria-hidden="true"></i> Mark Completed </a>
                                                            <a href="#update" data-toggle="modal" edit="<?= $task->id ?>" class="btn btn-info-alt btn-sm update"><i class="fa fa-pencil"></i> Edit </a>
                                                            <a href="<?= bs('todo/delete/' . $task->id . '') ?>" class="btn btn-danger-alt btn-sm"><i class="fa fa-trash-o"></i> Delete </a>
                                                        </td>
                                                    </tr>

                                                <?php endforeach; ?>

                                            <?php else : ?>

                                                <tr>
                                                    <td>
                                                        No Task Added Yet
                                                    </td>
                                                </tr>

                                            <?php endif; ?>

                                        </tbody>
                                    </table>
                                </div>
                                <div class="panel-footer"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .container-fluid -->
        </div>
        <!-- #page-content -->
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h2 class="modal-title">Create New Task</h2>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <div class="panel-body">
                                    <form role="form" method="post" action="<?= bs('todo/store') ?>" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Task Title</label>
                                            <input type="text" class="form-control" name="task_title" placeholder="Enter Task Title">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Description</label>
                                            <textarea name="desc" class="form-control"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Image (Optional).</label>
                                            <input type="file" class="form-control" name="image">
                                        </div>

                                </div>
                            </section>
                        </div>

                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save
                        changes</button>
                </div>
                </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!-- Modal -->
    <div class="modal fade" id="update" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h2 class="modal-title">Update Task</h2>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <section class="panel">
                                <div class="panel-body">
                                    <form role="form" method="post" action="<?= bs('todo/update') ?>" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label>Task Title</label>
                                            <input type="text" class="form-control" name="task_title" id="title" value="" placeholder="Enter Task Title">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Description</label>
                                            <textarea name="desc" class="form-control" id="desc"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label>Image (Optional).</label>
                                            <input type="file" class="form-control" name="image">
                                            <input type="hidden" name="old_img" value="" id="old_img">
                                            <input type="hidden" name="task_id" value="" id="task_id">
                                        </div>

                                </div>
                            </section>
                        </div>

                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save
                        changes</button>
                </div>
                </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <script>
        $(document).ready(function() {
            $("body").on('click', '.update', function(event) {
                event.preventDefault();
                // body...
                var id = $(this).attr('edit');

                $.ajax({

                    url: "<?php bs('todo/edit') ?>/" + id,

                    success: function(success) {
                        var obj = $.parseJSON(success);
                        $("#task_id").val(obj.id);
                        $("#title").val(obj.task_name);
                        $("#desc").val(obj.description);
                        $("#old_img").val(obj.task_img);
                    }

                })
            })
        });
    </script>