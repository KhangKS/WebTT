<section id="content">
	<div class="row">
	    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 slider-main pull-left mb-1">
	        <?php 
	        $this->load->view('frontend/modules/slider');
	        ?>
	    </div>
	</div>
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
							Hướng dẫn mua hàng online
						</h1>

						<p class="font-weight-bold">BƯỚC 1: Chọn sản phẩm cần mua</p>
						<p>- Chọn xem danh sách sản phẩm từ trang web chủ hoặc từ danh sách sản phẩm của trang web</p>
						<p>Thêm sản phẩm thích của mình. Tại đây, khách hàng có thể kiểm tra chi tiết thông tin, hình ảnh, giá cả và chương trình khuyến mãi (nếu có) của sản phẩm.</p>
						<p>Sau khi xem xét thông tin, nếu sản phẩm của khách hàng hài lòng và muốn đặt khách hàng mua quý khách hàng vui lòng chọn <span class="font-weight-bold">"Mua ngay"</span>.</p>
						<p>- Trường hợp khách hàng có nhu cầu đặt thêm sản phẩm khác, Quý khách vui lòng chọn vào ô "Tiếp tục mua hàng" và chọn sản phẩm tiếp theo.</p>
						<p>- Trường hợp khách chỉ đặt mua sản phẩm, Quý khách vui lòng vào ô <span class="font-weight-bold">"Đặt hàng"</span></p>

						<p class="font-weight-bold">BƯỚC 2: Nhập thông tin mua hàng</p>
						<p>Có 2 định dạng đăng ký như sau:</p>
						<p class="font-weight-bold">1. Trường hợp đã đăng ký tài khoản</p>
						<p>Nếu Quý khách đã đăng ký tài khoản, Quý khách vui lòng đăng nhập vào tài khoản bằng tên đăng nhập và mật khẩu đã được đăng ký.</p>
						<p>- Quý khách vui lòng điền thông tin theo yêu cầu</p>
						<p class="font-weight-bold">2. Trường hợp chưa đăng ký tài khoản</p>
						<p>- Nếu Quý khách không đăng ký tài khoản tại website vui lòng điền đầy đủ thông tin theo yêu cầu.</p>

						<p>- Tại trang "Thông tin đơn hàng" quý khách vui lòng điền đầy đủ thông tin giao hàng theo mẫu và chọn ô "Đặt hàng"</p>

						<p class="font-weight-bold">Mọi thông tin xin liên hệ: 0939.771.987</p>
					</div>
				</div>
			</div>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
			<?php $this->load->view('frontend/modules/tips-news'); ?> 
		</div>
	</div>
</section>
