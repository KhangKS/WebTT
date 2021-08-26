
<?php echo form_open_multipart('admin/category/insert'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/category/insert.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-cd"></i> Thêm danh mục mới</h1>
			<div class="breadcrumb">
				<button type="submit" class="btn btn-primary btn-sm" id="btn">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Thêm]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/category" role="button">
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
							<div class="form-group">
								<label>Tên danh mục <span class="maudo">(*)</span></label>
								<input type="text" class="form-control" name="name" style="width:50%" placeholder="Tên danh mục" value="<?php echo set_value('name'); ?>">
								<div class="error maudo" id="error-name"><?php echo form_error('name')?></div>
							</div>
							<div class="form-group">
								<label>Danh mục cha</label>
								<select name="parentid" class="form-control" style="width:50%">
									<option value="0">[--Chọn danh mục--]</option>
									<?php foreach ($this->Mcategory->category_list() as $category):?>
										<option <?php if (set_value('parentid') == $category['id']) echo 'selected' ?> value="<?php echo $category['id'] ?>"><?php echo $category['name'] ?></option>
									<?php endforeach; ?>
								</select>
							</div>
							<div class="form-group">
								<label>Sắp xếp</label>
								<select name="orders" class="form-control" style="width:50%">
									<option value="">[--Chọn vị trí--]</option>
									<option <?php if (set_value('orders') == "0") echo 'selected' ?> value="0">Đứng đầu</option>
									<?php foreach ($this->Mcategory->category_list() as $position):?>
										<option <?php if (set_value('orders') == $position['id']+1) echo 'selected' ?> value="<?php echo $position['id']+1 ?>">Sau - <?php echo $position['name'] ?></option>
									<?php endforeach; ?>
								</select>
							</div>
							<div class="form-group">
								<label>Trạng thái</label>
								<select name="status" class="form-control" style="width:50%">
									<option value="">[--Chọn trạng thái--]</option>
									<option <?php if (set_value('status') == 1) echo 'selected' ?> value="1">Đang kinh doanh</option>
									<option <?php if (set_value('status') == "0") echo 'selected' ?> value="0">Ngưng kinh doanh</option>
								</select>
							</div>
						</div>
					</div><!-- /.box -->
				</div>
			</div>
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
					$(`#error-name`).html(`Tên danh mục không được chứa ký tự đặc biệt.`);
					break;
				}
			}
		})
	});
</script>