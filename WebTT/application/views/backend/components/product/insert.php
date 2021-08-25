<?php echo form_open_multipart('admin/product/insert'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/product/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-cd"></i> Thêm sản phẩm mới</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm" id="btn">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Thêm]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/product" role="button">
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
							<div class="col-md-9">
								<div class="form-group">
									<label>Tên sản phẩm <span class = "maudo">(*)</span></label>
									<input type="text" class="form-control" name="name" value="<?php echo set_value('name');?>" placeholder="Tên sản phẩm" style="width:100%">
									<div class="error maudo" id="password_error"><?php echo form_error('name')?></div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="col-md-6" style="padding-left:0px;">
										<div class="form-group">
									<label>Loại sản phẩm<span class = "maudo">(*)</span></label>
									<select name="catid" class="form-control">
										<option value = "">[--Chọn loại sản phẩm--]</option>
										<?php foreach ($this->Mcategory->category_list() as $category):?>
											<option <?php if (set_value('catid') == $category['id']) echo 'selected' ?> value="<?php echo $category['id'] ?>"><?php echo $category['name'] ?></option>
										<?php endforeach; ?>
									</select>
									<div class="error maudo" id="password_error"><?php echo form_error('catid')?></div>
								</div>
									</div>
									<div class="col-md-6" style="padding-right: 0px;">
								<div class="form-group">
									<label>Nhà cung cấp <span class = "maudo">(*)</span></label>
									<select name="producer" class="form-control">
										<option value = "">[--Chọn nhà cung cấp--]</option>
										<?php foreach ($this->Mproducer->producer_list() as $supplier):?>
											<option <?php if (set_value('producer') == $supplier['id']) echo 'selected' ?> value="<?php echo $supplier['id'] ?>"><?php echo $supplier['name'] ?></option>
										<?php endforeach; ?>
									</select>
									<div class="error maudo" id="password_error"><?php echo form_error('producer')?></div>
								</div>
							</div>
								</div>
									</div>
									<!--chua gán cứng dc mô tả và chi tiết-->
								<div class="form-group">
									<label>Mô tả ngắn</label>
									<textarea name="sortDesc" value="<?php echo set_value('sortDesc');?>" class="form-control" ></textarea>
								</div>
								<div class="form-group">
									<label>Chi tiết sản phẩm</label>
									<textarea name="detail" id="detail" class="form-control" value="<?php echo set_value('detail');?>"></textarea>
      								<script>CKEDITOR.replace('detail');</script>
								</div>
							</div>
							<div class="col-md-3">
								<div class="form-group">
									<label>Giá gốc</label>
									<input name="price_root" class="form-control" value="<?php echo set_value('price_root');?>" type="number" value="0" min="0" step="1" max="1000000000">
								</div>
								<div class="form-group">
									<label>Khuyến mãi (%)</label>
									<input name="sale_of" class="form-control" value="<?php echo set_value('sale_of');?>" type="number">
								</div>
								<div class="form-group">
									<label>Giá bán</label>
									<input name="price_buy" value="<?php echo set_value('price_buy');?>" class="form-control" type="number" value="0" min="0" step="1" max="1000000000">
									<div class="error maudo" id="password_error"><?php echo form_error('price_buy')?></div>
								</div>
								<div class="form-group">
									<label>Số lượng</label>
									<input name="number" class="form-control" value="<?php echo set_value('number');?>" type="number" value="1" min="1" step="1" max="1000">
								</div>
								<div class="form-group">
                                    <label>Hình đại diện</label>
                                    <input type="file"  id="image_list" name="img" value="<?php echo set_value('img');?>" required style="width: 100%">
                                </div>
								<div class="form-group">
									<label>Hình ảnh sản phẩm</label>
									<input type="file"  id="image_list" name="image_list[]" value="<?php echo set_value('img_list[]');?>" multiple required>
								</div>
								<div class="form-group">
									<label>Trạng thái</label>
									<select name="status" class="form-control">
										<option <?php if (set_value('status') == 1) echo 'selected' ?> value="1">Kinh doanh</option>
										<option <?php if (set_value('status') == "0") echo 'selected' ?> value="0">Chưa Kinh doanh</option>
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
<script src="public/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(`#btn`).click(function(event) {
			var iChars = "!`@#$%^&*()+=-[]\\\';,./{}|\":<>?~_";   
			var data = $(`input[name="name"]`).val();

			for (var i = 0; i < data.length; i++)
			{      
				if (iChars.indexOf(data.charAt(i)) != -1)
				{    
					event.preventDefault();
					$(`input[name="name"]`).after(`<div class="error maudo">Tên sản phẩm không được chứa ký tự đặc biệt.</div>`);
					return false;
				}
			}
		})
	});
</script>
