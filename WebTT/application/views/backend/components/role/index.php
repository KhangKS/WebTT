<div class="content-wrapper">
	<section class="content-header">
		<h1><i class="fa fa-gift"></i> Danh sách quyền</h1>
	</section>
	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box" id="view">
					<div class="box-header with-border">
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
												<th class="text-center">Sửa</th>
											</tr>
										</thead>
										<tbody>
											<?php foreach ($list as $row):?>
												<tr>
													<td class="text-center"><?php echo $row['id'] ?></td>
													<td class="text-center"><?php echo $row['name'] ?></td>
													<td class="text-center">
														<?php 
															if ($row['id'] != 1) {
																echo 
																'<a class="btn btn-success btn-xs" href="admin/role/update/'.$row['id'].'" role = "button">
																	<span class="glyphicon glyphicon-edit"></span> Sửa
																</a>';
															}
														?>
													</td>
												</tr>
											<?php endforeach; ?>
										</tbody>
									</table>
								</div>
								<div class="row">
									<div class="col-md-12 text-center">
										<ul class="pagination">
											<?php echo $strphantrang ?>
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
		</div>
			<!-- /.row -->
	</section>
			<!-- /.content -->
</div><!-- /.content-wrapper -->