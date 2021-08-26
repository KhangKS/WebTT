<section id="content">
	<div class="row wraper">
		<div class="banner-product">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<img src="public/images/sp.png">
			</div>
		</div>
		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
			<div class="list-menu">
				<?php $this->load->view('frontend/modules/category'); ?>
			</div>
			<?php $this->load->view('frontend/modules/news'); ?> 
		</div>
		<div class = "col-xs-12 col-sm-12 col-md-6 col-lg-6 product-content" id="list-content">
			<div class="product-wrap" id="info-content">
				<div class="content-ct">
					<div class="fs-ne2-it clearfix" style="padding-top: 5px">
						<h1 style="text-align:center"><span style="color:#3498db">
							<strong><?php echo $row['fullname'] ?></strong></span>
						</h1>

						<p><span class="font-weight-bold font-italic">Tên công ty viết tắt:</span> <?php echo $row['abbreviation_name'] ?></p>
						<p><span class="font-weight-bold font-italic">MST:</span> <?php echo $row['tax_code'] ?></p>
						<p><span class="font-weight-bold font-italic">Địa chỉ trụ sở chính:</span> <?php echo $row['address'] ?></p>
						<p><span class="font-weight-bold font-italic">VP:</span> <?php echo $row['office'] ?></p>
						<p><span class="font-weight-bold font-italic">Điện thoại:</span> <?php echo $row['phone'] ?></p>
						<p><span class="font-weight-bold font-italic">Email:</span> <?php echo $row['email'] ?></p>
						<?php echo $row['description'] ?>

					</div>
				</div>
			</div>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
			<?php $this->load->view('frontend/modules/tips-news'); ?> 
		</div>
	</div>
</section>
	