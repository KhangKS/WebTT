<section id="product-detail">
		<div class="row">
		    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 slider-main pull-left">
		        <?php 
		        $this->load->view('frontend/modules/slider');
		        ?>
		    </div>
		</div>
		<div class="products-wrap">
			<?php if($row):?>
				<div class="breadcrumbs pl-2">
					<ul>
						<li class="home">
							<a href="trang-chu" title="Go to Home Page">Trang chủ</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li class="category3">
							<a href="<?php echo base_url() ?>/san-pham/<?php $link=$this->Mcategory->category_link($row['catid']); echo $link; ?>" title=""><?php $name=$this->Mcategory->category_name($row['catid']); echo $name; ?></a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li class="product"><?php echo $row['name'] ?></li>
					</ul>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 listimg-desc-product">
					<?php $this->load->view('frontend/modules/jcarousel');?>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<div class="product-view-content">
						<div class="product-view-name">
							<h1><?php echo $row['name'] ?></h1>
						</div>
						<div class="product-view-price">
							<div class="pull-left">
								<span class="price-label">Giá bán:</span>
								<span class="price"><?php echo number_format($row['price_sale'] - ($row['price_sale'] * $row['sale'] / 100)) ?>₫</span>
							</div>
							<?php if($row['price_sale']>0 && $row['sale']>0): ?>
								<div class="product-view-price-old">
									<span class="price"><?php echo number_format($row['price_sale'])?>₫</span>
									<span class="sale-flag">-<?php echo $row['sale'] ?>%</span>
								</div>
							<?php endif; ?>
						</div>
						<div class="product-status">
							<h4 style=" float: left;margin-right: 10px;">Thương hiệu: <?php $name=$this->Mcategory->category_name($row['catid']); echo $name; ?></h4>
							<p>| Tình trạng: <?php if($row['number'] - $row['number_buy']==0 || $row['status'] == 0) echo 'Hết hàng'; else echo 'Còn hàng' ?></p>
						</div>
						<div class="product-view-desc">
							<h3 style="font-weight:bold;">Mô tả:</h3>
							<p><?php echo $row['sortDesc'] ?></p>
						</div>
						<div class="actions-qty">
							<?php
							if($row['number'] - $row['number_buy']==0 || $row['status'] == 0){
								echo'<h2 style="color:red;">Ngừng kinh doanh</h2>';
							} else{
								echo '<div class="actions-qty__button">
								<button class="button btn-cart add_to_cart_detail detail-button" title="Mua ngay" type="button" aria-label="Mua ngay" class="fa fa-shopping-cart" onclick="onAddCart('.$row['id'].')"> Mua ngay</button>
							</div>';
							}
							?>
						</div>
						<!-- <div class="fk-boxs" id="km-all" data-comt="False">
							<div id="km-detail">
								<p class="fk-tit">Khuyến mại đặc biệt (SL có hạn)</p>
								<div class="fk-main">
									<div class="fk-sales">
										</ul>
										<ul>
											<li>Tặng PMH Phụ Kiện 2,000,000đ (khi phiếu mua hàng trên 100,000,000 đ)</li>
										</ul>
										<ul>
											<li>Tặng Flip Cover chính hãng Samsung (Áp dụng đến 26/05) <a href="#" target="_blank">Xem chi tiết</a>
											</li>
										</ul>
										<ul>
											<li>Giảm thêm 900,000đ khi mua combo sức khỏe - thời trang (Điện thoại + Samsung Watch + Samsung Buds) <a href="#" target="_blank">Xem chi tiết</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div style="margin-top: 20px;">
							<b>Tình trạng</b>
							<br>
							<span>Nguyên hộp. Đầy đủ phụ kiện từ nhà sản xuất, gồm: Sạc, cáp, tai nghe, que lấy SIM, sách hướng dẫn</span>
						</div>
						<div style="margin-top: 20px;">
							<b>Bảo hành</b>
							<br>
							<span>Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi nhà sản xuất.</span><a href="#" style="color:red"> (Chi tiết)</a>
						</div> -->
					</div>
				</div>
				<div class="product-v-desc col-md-10 col-12 col-xs-12">
					<h3>Đặc điểm nổi bật</h3>
					<?php echo $row['detail']?>
				</div>
				<div class="product-comment product-v-desc col-md-10 col-12 col-xs-12">
					<h3>Bình luận</h3>
					<div class="col-sm-12 col-xs-12 col-md-12 col-lg-12 mb-1">
				    	<?php $session_customer = $this->session->userdata('sessionKhachHang'); ?>
					    <?php if ($session_customer) :?>
						<div class="form-group">
							<form method="post" action="">
								<label for="comment">Bình luận:</label>
								<textarea required="" class="form-control" rows="3" id="comment" style="resize: none;" name="content"></textarea>
								<div class="error" id="content_error"><?php echo form_error('content')?></div>
								<input type="text" name="product_id" value="<?php echo $row['id'] ?>" hidden>
								<button class="btn-primary btn mt-1">Bình luận</button>
							</form>
						</div>
					    <?php else :?>
					    	<p>Hãy đăng nhập để cùng bình luận!</p>
						<?php endif; ?>

					    <!-- <span class="font-italic text-dark">(Chưa có bình luận nào)</span> -->
					    <?php foreach ($comments as $comment) :?>
				    	<?php 
					    	$datetime1 = new DateTime($comment['created_at']);//start time
					    	$datetime2 = new DateTime("now");
					    	$interval = $datetime1->diff($datetime2);
					    	
					    	$time_date = (int)$interval->format('%d');
					    	$time_hours = (int)$interval->format('%H');
					    	$time_minutes = (int)$interval->format('%i');

					    	if ($time_date > 0) {
					    		$time = $time_date.' ngày trước';
					    	}
					    	elseif ($time_hours > 0) {
					    		$time = $time_hours.' giờ trước';
					    	}
					    	elseif ($time_minutes > 0) {
					    		$time = $time_minutes.' phút trước';
					    	}
					    	else {
					    		$time = 'Vài giây trước';
					    	}
				    	?>

				    	<?php $customer = $this->Mcustomer->customer_detail_id($comment['customer_id']); ?>
					    <div class="comment mt-1" id="deleteComment<?php echo $comment['id'] ?>">
					        <span class="font-weight-bold"><?php echo $customer['fullname']; ?></span> <span><?php echo $time; ?></span><br>
					        <span class="ml-5" id="comment<?php echo $comment['id'] ?>"><?php echo $comment['content'] ?></span>
					        <br>

					        <?php if ($session_customer && $comment['customer_id'] != $session_customer['id']) :?>
				            	<span class="text-warning position-absolute btnEditHistory" onclick="replyComment('<?php echo $customer['fullname']; ?>')" style="top: 0; right: 40px; cursor: pointer">Trả lời</span>
					    	<?php endif; ?>

					        <?php if ($comment['customer_id'] == $session_customer['id'] ) :?>
					            <span class="text-warning position-absolute btnEditHistory" onclick="showModalEdit(<?php echo $comment['id']; ?>, '<?php echo $comment['content']; ?>')" style="top: 0; right: 40px; cursor: pointer">Sửa</span>
					            <span class="text-danger position-absolute deleteComment" onclick="deleteComment(<?php echo $comment['id'] ?>)" style="top: 0; right: 10px; cursor: pointer">Xóa</span>
					    	<?php endif; ?>
					    </div>
					    <?php endforeach; ?>
					</div>
				</div>
				<div class="product-comment product-v-desc col-md-10 col-12 col-xs-12">
					<h3>Sản phẩm liên quan</h3>
					<?php
					$list_spcungloai = $this->Mproduct->product_cungloai($row['catid'], $row['id'], 5);?>
					<?php 
					if(count($list_spcungloai)>0):?>
						<div class="row">
			                <?php 
			                    foreach ($list_spcungloai as $row) :?>
			                        <div class="col-lg-3 padding-5">
			                            <div class="product ">
			                                <?php if($row['sale'] > 0) :?>
			                                    <div class="giam-percent">
			                                        <span class="text-giam-percent">Giảm <?php echo $row['sale'] ?>%</span>
			                                    </div>
			                                <?php endif; ?>
			                                <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" >
			                                    <img class="img-p border"src="public/images/products/<?php echo $row['avatar'] ?>" alt="" style="height:60px;max-width:100px;">
			                                </a>
			                                <a href="<?php echo $row['alias'] ?>" title="<?php echo $row['name'] ?>" class="text-center title-product">
			                                    <h4>
			                                        <?php
			                                            $str = strip_tags($row['name']);
			                                            if(strlen($str)>21) {
			                                                $strCut = substr($str, 0, 21);
			                                                $str = substr($strCut, 0, strrpos($strCut, ' ')).' ... ';
			                                            }
			                                            echo $str;
			                                        ?>
			                                    </h4>
			                                </a>
			                                <p class="price-product1">
			                                    <?php echo number_format($row['price_sale'] - ($row['price_sale'] * $row['sale'] / 100)) ?>₫
			                                </p>
			                            </div>
			                        </div>
			                <?php endforeach; ?>
            			</div>
					<?php else: ?>
						<h4>Chưa có sản phẩm cùng loại</h4>
					<?php endif; ?>
				</div>
			<?php endif; ?>	
		</div>
				
				<div class="modal" id="modalEditComment">
				</div>
			</section>
			<script>
				function onAddCart(id){
					var strurl="<?php echo base_url();?>"+'/sanpham/addcart';
					jQuery.ajax({
						url: strurl,
						type: 'POST',
						dataType: 'json',
						data: {id: id},
						success: function(data) {
							document.location.reload(true);
							alert('Thêm sản phẩm vào giỏ hàng thành công !');
						}
					});
				}

				function deleteComment(id) {
					var result = confirm('Bạn có chắc chắn muốn xóa bình luận?');
					if (result) {
			            $.ajax({
			                url: "<?php echo base_url();?>/sanpham/deleteComment/" + id,
			                method: "POST",
			                data: {id: id},
			                success: function (respon) {
			                	console.log('Xóa thành công');
			                	$(`#deleteComment${id}`).remove();
			                }
			            })
					}
		        }

		        function showModalEdit(id, text) {
		            let html = `<div class="modal-dialog">
		                    <div class="modal-content">
		                        <div class="modal-body">
		                            <textarea class="form-control" id="history">${text}</textarea>
		                        </div>
		                        <div class="modal-footer">
		                            <button type="button" class="btn btn-primary" id="updateComment" onclick="updateComment(${id})">Cập nhật</button>
		                            <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
		                        </div>
		                    </div>
		                </div>`;
		            $('#modalEditComment').html(html).modal('show');
		        }

		        function replyComment(name) {
		            $('#comment').val(name+': ');
		        }

		        function updateComment(id) {
		            let $this = $('#updateComment');
		            $.ajax({
		                url: "<?php echo base_url();?>/sanpham/updateComment/" + id,
		                method: "POST",
		                data: {
		                	id: id,
		                	content: $('#history').val(),
		                },
		                success: function (respon) {
		                    $(`#comment${id}`).html(respon);
		                }
		            });
		            $('#modalEditComment').modal('hide');
		        }
			</script>
