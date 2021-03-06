<?php echo form_open_multipart('admin/producer/insert'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/producer/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Thêm nhà cung cấp</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm" id="btn">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Thêm]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/producer" role="button">
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
									<label>Tên nhà cung cấp <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="name" value="<?php echo set_value('name');?>" placeholder="Tên nhà cung cấp">
									<div class="error maudo" id="error-name"><?php echo form_error('name')?></div>
								</div>
								<div class="form-group">
									<label>Mã code <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="code" value="<?php echo set_value('code');?>" placeholder="Mã code">
									<div class="error maudo" id="error-code"><?php echo form_error('code')?></div>
								</div>
								<div class="form-group">
									<label>Từ khóa <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="keyword" value="<?php echo set_value('keyword');?>" placeholder="Từ khóa">
									<span style="font-style: italic; line-height: 32px;">Chú ý: Mỗi từ khóa phân cách bởi một dấu ",". Ví dụ: laptop, camera</span>
									<div class="error maudo" id="password_error"><?php echo form_error('keyword')?></div>
								</div>
								<div class="form-group">
									<label>Trạng thái</label>
									<select name="status" class="form-control">
										<option <?php if (set_value('status') == 1) echo 'selected' ?> value="1">Xuất bản</option>
										<option <?php if (set_value('status') == "0") echo 'selected' ?> value="0">Chưa xuất bản</option>
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
<!-- <script src="public/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(`#btn`).click(function(event) {
			var iChars = "!`@#$%^&*()+=-[]\\\';,./{}|\":<>?~_";   
			var name = $(`input[name="name"]`).val();

			for (var i = 0; i < name.length; i++)
			{      
				if (iChars.indexOf(name.charAt(i)) != -1)
				{    
					event.preventDefault();
					$(`#error-name`).html(`Tên nhà cung cấp không được chứa ký tự đặc biệt.`);
					break;
				}
			}

			var code = $(`input[name="code"]`).val();
			for (var i = 0; i < code.length; i++)
			{      
				if (iChars.indexOf(code.charAt(i)) != -1)
				{    
					event.preventDefault();
					$(`#error-code`).html(`Mã code không được chứa ký tự đặc biệt.`);
					break;
				}
			}
		})
	});
</script> -->