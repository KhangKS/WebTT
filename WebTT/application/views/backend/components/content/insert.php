<?php echo 	('admin/content/insert'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/content/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Thêm bài viết mới</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Thêm]
				</button>
				
				<a class="btn btn-primary btn-sm" href="admin/content" role="button">
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
							<div class="col-md-8">
								<div class="form-group">
									<label>Tiêu đề bài viết<span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="name" style="width:100%" placeholder="Tên bài viết" value="<?php echo set_value('name'); ?>">
									<div class="error maudo" id="password_error"><?php echo form_error('name')?></div>
								</div>
								<div class="form-group">
									<label>Loại bài viết</label>
									<select name="catepost" class="form-control" style="width:235px">
										<option <?php if (set_value('catepost') == 1) echo 'selected' ?> value="1">Tin tức</option>
										<option <?php if (set_value('catepost') == 2) echo 'selected' ?> value="2">Khách hàng tiêu biểu</option>
										<option <?php if (set_value('catepost') == 3) echo 'selected' ?> value="3">Tuyển dụng</option>
										<option <?php if (set_value('catepost') == 4) echo 'selected' ?> value="4">Dịch vụ</option>
										<option <?php if (set_value('catepost') == 5) echo 'selected' ?> value="5">Nông nghiệp</option>
										<option <?php if (set_value('catepost') == 7) echo 'selected' ?> value="7">Tin thủ thuật</option>
									</select>
								</div>
								<div class="form-group">
									<label>Mô tả ngắn</label>
									<textarea name="introtext" class="form-control" ><?php echo set_value('introtext'); ?></textarea>
								</div>
								<div class="form-group">
									<label>Chi tiết bài viết<span class = "maudo">(*)</span></label>
									<textarea name="fulltext" id="fulltext" class="form-control" ><?php echo set_value('fulltext'); ?></textarea>
      								<script>CKEDITOR.replace('fulltext');</script>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
                                    <label>Hình đại diện<span class = "maudo">(*)</span></label>
                                    <input type="file" id="image_list" name="img" style="width: 100%" required>
                                </div>
								<div class="form-group">
									<label>Trạng thái</label>
									<select name="status" class="form-control" style="width:235px">
										<option <?php if (set_value('status') == 1) echo 'selected' ?> value="1">Đăng</option>
										<option <?php if (set_value('status') == "0") echo 'selected' ?> value="0">Chưa đăng</option>
									</select>
								</div>
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