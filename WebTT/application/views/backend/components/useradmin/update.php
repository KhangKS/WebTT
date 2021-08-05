<?php echo form_open_multipart('admin/useradmin/update/'.$row['id']); ?>
<div class="content-wrapper">
    <form action="<?php echo base_url() ?>admin/useradmin/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
        <section class="content-header">
            <h1><i class="fa fa-user-plus"></i> Cập nhật tài khoản</h1>
            <div class="breadcrumb">
                <button type = "submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-floppy-save"></span>
                    Lưu[Sửa]
                </button>
                <a class="btn btn-primary btn-sm" href="admin/useradmin" role="button">
                    <span class="glyphicon glyphicon-remove do_nos"></span> Thoát
                </a>
            </div>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box" id="view">
                        <div class="box-body">
                            <?php  if($this->session->flashdata('success')):?>
                                <div class="row">
                                    <div class="alert alert-success">
                                        <?php echo $this->session->flashdata('success'); ?>
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    </div>
                                </div>
                            <?php  endif;?>
                            <?php  if($this->session->flashdata('error')):?>
                                <div class="row">
                                    <div class="alert alert-error">
                                        <?php echo $this->session->flashdata('error'); ?>
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    </div>
                                </div>
                            <?php  endif;?>
                            <div class="col-md-9">
                                <div class="form-group">
                                    <label>Họ và tên <span class = "maudo">(*)</span></label>
                                    <input type="text"  class="form-control" name="fullname" value="<?php echo $row['fullname'] ?>" >
                                    <div class="error"  style="color: red;"><?php echo form_error('fullname')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Email <span class = "maudo">(*)</span></label>
                                    <input type="email" class="form-control" name="email" value="<?php echo $row['email'] ?>" >
                                    <div class="error"  style="color: red;"><?php echo form_error('email')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Tên đăng nhập <span class = "maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="username" value="<?php echo $row['username']?>" >
                                    <div class="error"  style="color: red;"><?php echo form_error('username')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Mật khẩu <span class = "maudo">(*)</span></label>
                                    <input type="password" class="form-control" name="password">
                                    <div class="error"  style="color: red;"><?php echo form_error('password')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Số điện thoại <span class = "maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="phone" value="<?php echo $row['phone'] ?>" >
                                    <div class="error"  style="color: red;"><?php echo form_error('phone')?></div>
                                </div>
                                <div class="form-group">
                                    <label>Địa chỉ <span class = "maudo">(*)</span></label>
                                    <input type="text" class="form-control" name="address" value="<?php echo $row['address'] ?>" >
                                    <div class="error" style="color: red;"><?php echo form_error('address')?></div>
                                </div>
                                
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Giới tính</label>
                                    <select name="gender" class="form-control">
                                        <option value="1" <?php if($row['gender'] == 1) {echo 'selected';}?> >Nam</option>
                                        <option value="0" <?php if($row['gender'] == 0) {echo 'selected';}?>>Nữ</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Ảnh đại diện</label>
                                    <input type="file"  id="image_list" name="image" style="width: 100%">
                                </div>
                                <!-- <?php if ($user['role'] == 1): ?>
                                    <div class="form-group">
                                        <label>Trạng thái</label>
                                        <select name="status" class="form-control">
                                            <option value="1" <?php if($row['status'] == 1) {echo 'selected';}?> >Kích hoạt</option>
                                            <option value="0" <?php if($row['status'] == 0) {echo 'selected';}?>>Chưa kích hoạt</option>
                                        </select>
                                    </div>
                                <?php endif ?> -->
                            </div>
                        </div>
                    </div><!-- /.box -->
                </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </section>
    </form>
<!-- /.content -->
</div><!-- /.content-wrapper -->