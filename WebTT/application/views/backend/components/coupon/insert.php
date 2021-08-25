<?php echo 	('admin/coupon/insert'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/coupon/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Thêm mã giảm giá mới</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm" id="btn">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Thêm]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/coupon" role="button">
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
							<div class="col-md-6">
								<div class="form-group">
									<label>Mã giảm giá</label>
									<input type="text" class="form-control" name="code" style="width:100%" placeholder="Mã giảm giá" value="<?php echo set_value('code');?>">
									<div class="error maudo" id="error-code"><?php echo form_error('code')?></div>
								</div>
								<div class="form-group">
									<label>Số tiền giảm giá</label>
									<input type="number" class="form-control" name="discount" style="width:100%" placeholder="Số tiền giảm giá" value="<?php echo set_value('discount');?>">
									<div class="error maudo" id="password_error"><?php echo form_error('discount')?></div>
								</div>
								<div class="form-group">
									<label>Số lần giới hạn nhập</label>
									<input type="number" class="form-control" name="limit_number" style="width:100%" placeholder="Số lần giới hạn nhập" value="<?php echo set_value('limit_number');?>">
									<div class="error maudo" id="password_error"><?php echo form_error('limit_number')?></div>
								</div>
								<div class="form-group">
									<label>Số tiền đơn hàng tối thiểu được áp dụng</label>
									<input type="number" class="form-control" name="payment_limit" style="width:100%" placeholder="Đơn hàng tối thiểu được áp dụng" value="<?php echo set_value('payment_limit');?>">
									<div class="error maudo" id="password_error"><?php echo form_error('payment_limit')?></div>
								</div>
								
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label>Ngày giới hạn nhập</label>
									<div class="form-group">
										<input type="date"  style="width:100%" name="expiration_date" required value="<?php echo set_value('expiration_date');?>">
									</div>
								</div>
								<div class="form-group">
									<label>Mô tả ngắn</label>
									<textarea name="description" class="form-control"><?php echo set_value('description');?></textarea>
								</div>
								<div class="form-group">
									<label>Trạng thái</label>
									<select name="status" class="form-control" style="width:235px">
										<option <?php if (set_value('status') == 1) echo 'selected' ?> value="1">Có hiệu lực</option>
										<option <?php if (set_value('status') == "0") echo 'selected' ?> value="0">Không có hiệu lực</option>
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
	<!-- /.coupon -->
</div><!-- /.coupon-wrapper -->
<script src="public/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(`#btn`).click(function(event) {
			var iChars = "!`@#$%^&*()+=-[]\\\';,./{}|\":<>?~_";   
			var code = $(`input[name="code"]`).val();

			for (var i = 0; i < code.length; i++)
			{      
				if (iChars.indexOf(code.charAt(i)) != -1)
				{    
					event.preventDefault();
					$(`#error-code`).html(`Mã giảm giá không được chứa ký tự đặc biệt.`);
					break;
				}
			}
		})
	});
</script>
