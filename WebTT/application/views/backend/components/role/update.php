<?php echo form_open_multipart('admin/role/update/'.$row['id']); ?>
<div class="content-wrapper">
	<form action="<?php echo base_url() ?>admin/role/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
		<section class="content-header">
			<h1><i class="glyphicon glyphicon-text-background"></i> Cập nhật quyền <?php echo $row['name']; ?></h1>
			<div class="breadcrumb">
				<button type = "submit" class="btn btn-primary btn-sm">
					<span class="glyphicon glyphicon-floppy-save"></span>
					Lưu[Cập nhật]
				</button>
				<a class="btn btn-primary btn-sm" href="admin/role" role="button">
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
							<div class="col-md-12">
								<div class="box-body">
									<div class="col-md-12">
										<?php foreach ($permissions as $permission): ?>
											<div class="form-group">
												<input type="checkbox" 
													name="permission[<?php echo $permission['id'] ?>]"
													<?php if($this->Mrole_has_permission->has_permission($row['id'], $permission['id']) == 1) echo 'checked' ?> > 
												<label><?php echo $permission['name'] ?></label>
											</div>
										<?php endforeach; ?>
									</div>
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