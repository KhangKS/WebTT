<div class="content-wrapper">
	<section class="content-header">
		<h1><i class="glyphicon glyphicon-text-background"></i> Danh sách Liên hệ khách hàng</h1>
		<div class="breadcrumb">
			
			<a class="btn btn-primary btn-sm" href="<?php echo base_url()?>admin/contact/recyclebin" role="button">
				<span class="glyphicon glyphicon-trash"></span> Thùng rác(<?php $total=$this->Mcontact->contact_trash_count(); echo $total; ?>)
			</a>
		</div>
		<form class="mt-2" action="<?php echo base_url() ?>admin/contact" method="GET" accept-charset="utf-8">
			<div class="form-group col-md-3">
				<input type="text" name="search" class="form-control" placeholder="Email">
			</div>
			<button type="submit" class="btn btn-success">Tìm kiếm</button>
		</form>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box" id="view">
					<!-- /.box-header -->
					<?php  if($this->session->userdata('message')):?>
						<div class="alert alert-success">
							<?php echo $this->session->userdata('message'); ?>
							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
						</div>
					<?php endif; ?>
					<div class="box-body">
						<?php  if($this->session->flashdata('success')):?>
							<div class="row">
								<div class="alert alert-success">
									<?php echo $this->session->flashdata('success'); ?>
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
								</div>
							</div>
						<?php  endif;?>
						<div class="row" style='padding:0px; margin:0px;'>
							<!--ND-->
							<div class="table-responsive">
								<table class="table table-hover table-bordered">
									<thead>
										<tr>
											<th class="text-center" style="width:20px">ID</th>
											<th class="text-center">Tên</th>
											<th class="text-center">Ngày gửi</th>
											<th class="text-center">Địa chỉ mail</th>
											<th class="text-center">Tiêu đề</th>											
											<th class="text-center" style="width:90px">Trạng thái</th>
											
											<th class="text-center" colspan="2">Thao tác</th>
										</tr>
									</thead>
									<tbody>
										<?php foreach ($list as $row):?>
											<tr>
												<td class="text-center"><?php echo $row['id'] ?></td>
												<td class="text-center"><?php echo $row['fullname']?></td>
												<td class="text-center"><?php echo $row['created_at'] ?></td>
												<td class="text-center"><?php echo $row['email'] ?></td>
												<td class="text-center"><?php echo $row['title'] ?></td>

												<td class="text-center">
													<a href="<?php echo base_url() ?>admin/contact/status/<?php echo $row['id'] ?>">
														<?php if($row['status']==0):?>
															<span class="fa fa-eye-slash maudo"  data-toggle="tooltip" data-placement="top" title="Chưa xem"></span>
															<?php else: ?>
																<span class="fa fa-eye mauxanh18"  data-toggle="tooltip" data-placement="top" title="Đã xem"></span>		
															<?php endif; ?>
														</a>
													</td>
													<td class="text-center">
														<a class="btn btn-info btn-xs" href="<?php echo base_url() ?>admin/contact/detail/<?php echo $row['id'] ?>" role = "button">
															<span class="glyphicon glyphicon-trash"></span>Xem
														</a>
													</td>
													<td class="text-center">
														<!-- <a class="btn btn-danger btn-xs" href="<?php echo base_url() ?>admin/contact/trash/<?php echo $row['id'] ?>" onclick="return confirm('Xác nhận xóa liên hệ này ?')" role = "button">
															<span class="glyphicon glyphicon-trash"></span>Xóa
														</a> -->
														<form action="<?php echo base_url() ?>admin/contact/trash/<?php echo $row['id'] ?>" method="POST" accept-charset="utf-8">
															<input type="text" name="url_index" value="<?php echo base_url().$this->uri->uri_string ?>" hidden>
															<button type="submit" class="btn btn-danger btn-xs" onclick="return confirm('Xác nhận xóa liên hệ này ?')">
																<span class="glyphicon glyphicon-trash"></span>Xóa
															</button>
														</form>
													</td>
												</tr>
											<?php endforeach; ?>
										</tbody>
									</table>
								</div>
								<div class="row">
									<div class="col-md-12 text-center">
										<ul class="pagination">
											<?php echo $pagination ?>
										</ul>
									</div>
								</div>
								<!-- /.ND -->
							</div>
						</div><!-- ./box-body -->
					</div><!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</section>
		<!-- /.content -->
</div><!-- /.content-wrapper -->