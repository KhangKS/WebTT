<div class="content-wrapper">
	<section class="content-header">
		<h1><i class="glyphicon glyphicon-text-background"></i> Danh sách bài viết</h1>
		<div class="breadcrumb">
			<a class="btn btn-primary btn-sm" href="<?php echo base_url()?>/admin/content/insert" role="button">
				<span class="glyphicon glyphicon-plus"></span> Thêm mới
			</a>
			<a class="btn btn-primary btn-sm" href="<?php echo base_url()?>admin/content/recyclebin" role="button">
				<span class="glyphicon glyphicon-trash"></span> Thùng rác(<?php $total=$this->Mcontent->content_trash_count(); echo $total; ?>)
			</a>
		</div>
		<form class="mt-2" action="<?php echo base_url() ?>admin/content" method="GET" accept-charset="utf-8">
			<div class="form-group col-md-3">
				<input type="text" name="search" class="form-control" placeholder="Tên bài viết">
			</div>
			<button type="submit" class="btn btn-success">Tìm kiếm</button>
		</form>
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
											<th class="text-center">ID</th>
											<th class="text-center"  style="width:100px;">Hình</th>
											<th class="text-center">Tiêu đề bài viết</th>
											<th class="text-center">Trạng thái</th>
											<th class="text-center" colspan="2">Thao tác</th>
											
										</tr>
									</thead>
									<tbody>
									<?php foreach ($list as $row):?>
										
										<tr>
											<td class="text-center"><?php echo $row['id'] ?></td>
											<td>
												<img src="public/images/posts/<?php echo $row['img'] ?>" alt="<?php echo $row['title'] ?>" class="img-responsive">
											</td>
											<td><?php echo $row['title']?></td>
											<td class="text-center">
												<a href="<?php echo base_url() ?>admin/content/status/<?php echo $row['id'] ?>">
													<?php if($row['status']==1):?>
														<span class="glyphicon glyphicon-ok-circle mauxanh18"></span>
													<?php else: ?>
														<span class="glyphicon glyphicon-remove-circle maudo"></span>
													<?php endif; ?>
												</a>
											</td>
											<td class="text-center">
												<a class="btn btn-success btn-xs" href="<?php echo base_url() ?>admin/content/update/<?php echo $row['id']?>/<?php 
													if ($this->uri->segment(3))
													{
														echo $this->uri->segment(3);
													} 
													else {
														echo 1;
													} 
												?>" role = "button">
													<span class="glyphicon glyphicon-edit"></span>Sửa
												</a>
												

												<!-- <form action="<?php echo base_url() ?>admin/content/update/<?php echo $row['id']?>" method="POST" accept-charset="utf-8">
													<input type="text" name="url_index" value="<?php echo base_url().$this->uri->uri_string ?>" hidden>
													<button type="submit" class="btn btn-success btn-xs">
														<span class="glyphicon glyphicon-edit"></span>Sửa
													</button>
												</form> -->
											</td>
											<td class="text-center">
												<!-- <a class="btn btn-danger btn-xs" href="<?php echo base_url() ?>admin/content/trash/<?php echo $row['id'] ?>" onclick="return confirm('Xác nhận xóa bài này ?')" role = "button">
													<span class="glyphicon glyphicon-trash"></span>Xóa
												</a> -->
												<form action="<?php echo base_url() ?>admin/content/trash/<?php echo $row['id'] ?>" method="POST" accept-charset="utf-8">
													<input type="text" name="url_index" value="<?php echo base_url().$this->uri->uri_string ?>" hidden>
													<button type="submit" class="btn btn-danger btn-xs" onclick="return confirm('Xác nhận xóa bài này ?')">
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