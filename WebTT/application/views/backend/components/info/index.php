<?php echo form_open_multipart('admin/info/index/'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/info/index.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Hệ Thống</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm" id="btn">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu
				</button>
			</div>
		</section>
		<!-- Main content -->
		<section class="content">
			<div class="row">
				<div class="col-md-12">
					<div class="box" id="view">
						<div class="box-body">
							<div class="col-md-9">
								<div class="form-group">
									<label> Tên đầy đủ <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="fullname" style="width:100%" placeholder="Tên đầy đủ" value="<?php echo $row['fullname'] ?>">
									<div class="error maudo" id="error-fullname"><?php echo form_error('fullname')?></div>
								</div>
								<div class="form-group">
									<label>Tên viết tắt</label>
									<input type="text" class="form-control" name="abbreviation_name" style="width:100%" placeholder="Tên viết tắt" value="<?php echo $row['abbreviation_name'] ?>">
									<div class="error maudo" id="error-abbreviation-name"><?php echo form_error('abbreviation_name')?></div>
								</div>
								<div class="form-group">
									<label>Địa chỉ</label>
									<input type="text" class="form-control" name="address" style="width:100%" placeholder="Địa chỉ" value="<?php echo $row['address'] ?>">
									<div class="error maudo"><?php echo form_error('address')?></div>
								</div>
								<div class="form-group">
									<label>Email <span class = "maudo">(*)</span></label>
									<input type="email" class="form-control" name="email" style="width:100%" placeholder=" Email" value="<?php echo $row['email'] ?>">

									<div class="error maudo"><?php echo form_error('email')?></div>
								</div>
								<div class="form-group">
									<label>Văn phòng <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="office" style="width:100%" placeholder=" Văn phòng" value="<?php echo $row['office'] ?>">
									<div class="error maudo"><?php echo form_error('office')?></div>
								</div>
								<div class="form-group">
									<label>Số điện thoại <span class = "maudo">(*)</span></label>
									<input type="number" class="form-control" name="phone" style="width:100%" placeholder="Số điện thoại" value="<?php echo $row['phone'] ?>">
									<div class="error maudo"><?php echo form_error('phone')?></div>
								</div>
								<div class="form-group">
									<label>Mô tả <span class = "maudo">(*)</span></label>
									<textarea name="description" id="description" class="form-control"><?php echo $row['description'] ?></textarea>
									<script>CKEDITOR.replace('description');</script>
								</div>
								<div class="form-group">
									<label>MST <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="tax_code" style="width:100%" placeholder="Mã số thuế" value="<?php echo $row['tax_code'] ?>">
									<div class="error maudo"><?php echo form_error('tax_code')?></div>
								</div>
							</div>
						</div>
						<div class="col-md-3">

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
<script src="public/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(`#btn`).click(function(event) {
			var iChars = "!`@#$%^&*()+=-[]\\\';,./{}|\":<>?~_";   
			var fullname = $(`input[name="fullname"]`).val();

			for (var i = 0; i < fullname.length; i++)
			{      
				if (iChars.indexOf(fullname.charAt(i)) != -1)
				{    
					event.preventDefault();
					$(`#error-fullname`).html(`Tên đầy đủ không được chứa ký tự đặc biệt.`);
					break;
				}
			}

			var abbreviation_name = $(`input[name="abbreviation_name"]`).val();
			for (var i = 0; i < abbreviation_name.length; i++)
			{      
				if (iChars.indexOf(abbreviation_name.charAt(i)) != -1)
				{    
					event.preventDefault();
					$(`#error-abbreviation-name`).html(`Tên viết tắt không được chứa ký tự đặc biệt.`);
					break;
				}
			}
		})
	});
</script>