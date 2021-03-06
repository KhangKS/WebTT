<?php echo form_open_multipart('admin/configuration/update/'); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/configuration/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Hệ Thống</h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
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
								<?php  if($this->session->flashdata('success')):?>
									<div class="alert alert-success">
										<?php echo $this->session->flashdata('success'); ?>
										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
									</div>
								<?php  endif;?>
								<div class="col-md-9">
									<div class="form-group">
										<label> Mail smtp <span class = "maudo">(*)</span></label>
										<input type="email" class="form-control" name="mail_smtp" style="width:100%" placeholder="Mail cấu hình" value="<?php echo $row['mail_smtp'] ?>">
										<div class="error maudo"><?php echo form_error('mail_smtp')?></div>
									</div>
									<div class="form-group">
										<label>Password Mail smtp</label>
										<input type="password" class="form-control" name="mail_smtp_password" style="width:100%" placeholder=" Password Mail cấu hình" value="<?php echo $row['mail_smtp_password'] ?>">
										<div class="error maudo"><?php echo form_error('mail_smtp_password')?></div>
									</div>
									<div class="form-group">
										<label>Mail admin</label>
										<input type="text" class="form-control" name="mail_noreply" style="width:100%" placeholder="Mail nhận thông tin đơn hàng" value="<?php echo $row['mail_noreply'] ?>">
										<div class="error maudo"><?php echo form_error('mail_noreply')?></div>
									</div>
									<div class="form-group">
										<label> PriceShip <span class = "maudo">(*)</span></label>
										<input type="number" class="form-control" name="priceShip" style="width:100%" placeholder="Giá ship" value="<?php echo $row['priceShip'] ?>">

										<div class="error maudo"><?php echo form_error('priceShip')?></div>
									</div>
									<div class="form-group">
										<label> Title <span class = "maudo">(*)</span></label>
										<input type="text" class="form-control" name="title" style="width:100%" placeholder=" Tiêu đề" value="<?php echo $row['title'] ?>">

										<div class="error maudo"><?php echo form_error('title')?></div>
									</div>
									<div class="form-group">
										<label> Description <span class = "maudo">(*)</span></label>
										<input type="text" class="form-control" name="description" style="width:100%" placeholder="Description" value="<?php echo $row['description'] ?>">
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