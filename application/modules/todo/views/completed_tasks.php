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
                            <a class="btn btn-success" href="<?= bs('todo') ?>"><i class="fa fa-plus-circle" aria-hidden="true"></i> Create New Task</a>
                            <button class="btn btn-info"> <i class="fa fa-check-circle" aria-hidden="true"></i> All Completed Tasks</button>
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
                                                                <img src="<?= $task->task_img ?>" alt="task image" width="100">
                                                            <?php
                                                            else :
                                                                ?>
                                                                <img src="<?= base_url() ?>public/img/Task.png" alt="task image" width="100">
                                                            <?php endif;  ?>
                                                        </td>
                                                        <td>
                                                            <?= $task->description ?>
                                                        </td>
                                                        <td>
                                                            <span class="label label-primary"><?= $task->task_status ?></span>
                                                        </td>
                                                        <td>
                                                            <?= date('d-m-Y', strtotime($task->created_at)) ?>
                                                        </td>
                                                    </tr>

                                                <?php endforeach; ?>

                                            <?php else : ?>

                                                <tr>
                                                    <td>
                                                        No Task Completed Yet
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