<?php echo form_open( base_url()."lien-he"); ?>
<section>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 slider-main pull-left mb-1">
	        <?php 
	        $this->load->view('frontend/modules/slider');
	        ?>
	    </div>
		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
			<div class="list-menu">
				<?php $this->load->view('frontend/modules/category'); ?>
			</div>
			<?php $this->load->view('frontend/modules/news'); ?> 
		</div>

		<div class = "col-xs-12 col-sm-12 col-md-6 col-lg-6">
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="section-article contactpage" style="  padding-left: 20px;">
					<form accept-charset="UTF-8" action="<?php echo base_url() ?>lien-he" id="contact" method="post">
						<input name="FormType" type="hidden" value="contact">
						<input name="utf8" type="hidden" value="true">
						<h1 style="color: black">Liên hệ với chúng tôi</h1>				
						
						<div class="form-comment">
							<div class="row" style="padding-left: 14px;">
								<div class="col-md-4 col-12">
									<div class="form-group" style="width: 150px;">
										<label for="name"><em> Họ tên</em><span class="required">*</span></label>
										<input id="name" name="fullname" type="text" value="" class="form-control">
										<div class="error" id="password_error" style="color: red;"><?php echo form_error('fullname')?></div>
									</div>
								</div>
								<div class="col-md-4 col-12">
									<div class="form-group" style="width: 150px;">
										<label for="email"><em> Email</em><span class="required">*</span></label>
										<input id="email" name="email" class="form-control" type="email" value="">
										<div class="error" id="password_error" style="color: red;"><?php echo form_error('email')?></div>
									</div>
								</div>
								<div class="col-md-4 col-12">
									<div class="form-group" style="width: 150px;">
										<label for="phone"><em> Số điện thoại</em><span class="required">*</span></label>
										<input type="number" id="phone" class="form-control" name="phone">
										<div class="error" id="password_error" style="color: red;"><?php echo form_error('phone')?></div>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="message"><em> Tiêu đề</em><span class="required">*</span></label>
								<textarea id="message" name="title" class="form-control custom-control" rows="2"></textarea>
								<div class="error" id="password_error" style="color: red;"><?php echo form_error('title')?></div>
							</div>
							<div class="form-group">
								<label for="message"><em> Lời nhắn</em><span class="required">*</span></label>
								<textarea id="message" name="content" class="form-control custom-control" rows="5"></textarea>
								<div class="error" id="password_error" style="color: red;"><?php echo form_error('content')?></div>
							</div>
							<button type="submit" class="btn-update-order" >Gửi nhận xét</button>

						</div>
					</form>
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="f-contact" style="
				padding-left: 32px;
				">
				
				<h1 style="color: black">Thông tin liên hệ</h1>
				<h3>Phòng Kỹ Thuật - Bảo Hành</h3>
				<ul class="list-unstyled">
					<li class="clearfix">
						<i class="fa fa-map-marker fa-1x" style="color:#0f9ed8; padding: 20px; "></i>
						<span style="color: black"> 43 Đường số 9,Thới Nhựt 2 ,P.An Khánh, Q.Ninh Kiều, TP.Cần Thơ.</span><br>
					</li>
					<li class="clearfix">
						<i class="fa fa-phone fa-1x" style="color:#0f9ed8;padding: 20px;  "></i>
						<span style="color: black">0939771987</span>
					</li>
					<li class="clearfix">
						<i class="fa fa-envelope fa-1x " style="color:#0f9ed8; padding: 20px; "></i>
						<span style="color: black"><a href="mailto:sale.24hstore@gmail.com">huyminhcantho@gmail.com</a></span>
					</li>
				</ul>
				<h3>Phòng Lập Trình - Tư Vấn</h3>
				<ul class="list-unstyled">
					<li class="clearfix">
						<i class="fa fa-map-marker fa-1x" style="color:#0f9ed8; padding: 20px; "></i>
						<span style="color: black"> 43 Đường số 9,Thới Nhựt 2 ,P.An Khánh, Q.Ninh Kiều, TP.Cần Thơ.</span><br>
					</li>
					<li class="clearfix">
						<i class="fa fa-phone fa-1x" style="color:#0f9ed8;padding: 20px;  "></i>
						<span style="color: black">0939771987</span>
					</li>
					<li class="clearfix">
						<i class="fa fa-envelope fa-1x " style="color:#0f9ed8; padding: 20px; "></i>
						<span style="color: black"><a href="mailto:sale.24hstore@gmail.com">huyminhcantho@gmail.com</a></span>
					</li>
				</ul>
				</div>
			</div>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
			<?php $this->load->view('frontend/modules/tips-news'); ?> 
		</div>
	
		<div class="col-md-12 col-lg-12 col-xs-12 col-12">
		<h1 style="color: black">ĐỊA CHỈ</h1>
			<div style="margin-top: 15px;">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7857.465295798554!2d105.74992037296444!3d10.038906585900078!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd73b3c9a031d237f!2zS0RDIFRo4bubaSBOaOG7sXQ!5e0!3m2!1svi!2s!4v1625473899171!5m2!1svi!2s" width="80%" height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
			</div>
		</div>
	</div>

</section>