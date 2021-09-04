<section id="product-all" class="collection">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 slider-main pull-left mb-1">
            <?php 
            $this->load->view('frontend/modules/slider');
            ?>
        </div>
    </div>
    <div class="row">
    	<div class="banner-product">
    		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
    			<img src="public/images/sp.png">
    		</div>
    	</div>
    	<div class="slider">
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                    <div class="list-menu">
                        <?php $this->load->view('frontend/modules/category'); ?>
                    </div>
                    <?php $this->load->view('frontend/modules/product-sale'); ?>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 product-content">
                    <div class="product-wrap">
                        <div class="collection__title">
                            <h1><span>Tất cả sản phẩm</span></h1>
                            <div id="sort-by" class="hidden-xs">
                                <label class="left hidden-xs" for="sort-select">Sắp xếp theo: </label>
                                <form class="form-inline form-viewpro">
                                    <div class="form-group">
                                        <?php 
                                        $html_list="";
                                        $html_list.='<select id ="sortControl" class = "sort-by form-control input-sm" onchange="sortby(this.value)">';
                                        if($this->session->userdata('sortby')){
                                            $data = $this->session->userdata('sortby');
                                            $sort = $data[0].'-'.$data[1];
                                            if($sort == 'number_buy-desc'){
                                                $html_list.='<option value="number_buy-desc" selected>Bán chạy nhất</option>';
                                            }else{
                                                $html_list.='<option value="number_buy-desc">Bán chạy nhất</option>';
                                            }
                                            if($sort == 'name-asc'){
                                                $html_list.='<option value="name-asc" selected>A → Z</option>';
                                            }else{
                                                $html_list.='<option value="name-asc" >A → Z</option>';
                                            }
                                            if($sort == 'name-desc'){
                                                $html_list.='<option value="name-desc" selected>Z → A</option>';
                                            }else{
                                                $html_list.='<option value="name-desc">Z → A</option>';
                                            }
                                            if($sort == 'price-asc'){
                                                $html_list.='<option value="price-asc" selected>Giá tăng dần</option>';
                                            }else{
                                                $html_list.='<option value="price-asc">Giá tăng dần</option>';
                                            }
                                            if($sort == 'price-desc'){
                                                $html_list.='<option value="price-desc" selected>Giá giảm dần</option>';
                                            }else{
                                                $html_list.='<option value="price-desc">Giá giảm dần</option>';
                                            }
                                            if($sort == 'created-desc'){
                                                $html_list.='<option value="created-desc" selected>Hàng mới nhất</option>';
                                            }else{
                                                $html_list.='<option value="created-desc">Hàng mới nhất</option>';
                                            }
                                            if($sort == 'created-asc'){
                                                $html_list.='<option value="created-asc" selected>Hàng cũ nhất</option>';
                                            }else{
                                                $html_list.='<option value="created-asc">Hàng cũ nhất</option>';
                                            }
                                        }else{
                                            $html_list.='<option value="number_buy-desc">Bán chạy nhất</option>';
                                            $html_list.='<option value="name-asc">A → Z</option>';
                                            $html_list.='<option value="name-desc">Z → A</option>';
                                            $html_list.='<option value="price-asc">Giá tăng dần</option>';
                                            $html_list.='<option value="price-desc">Giá giảm dần</option>';
                                            $html_list.='<option value="created-desc">Hàng mới nhất</option>';
                                            $html_list.='<option value="created-desc">Hàng cũ nhất</option>';
                                        }
                                        $html_list.='</select>';
                                        echo $html_list;
                                        ?>
                                    </div>
                                </form>
                            </div>
                            
                            <div class="row" id="list-product">
                                <?php 
                                    foreach ($list as $row) :?>
                                        <div class="col-lg-4 padding-5">
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
                                                    <h3>
                                                        <?php
                                                            $str = strip_tags($row['name']);
                                                            if(strlen($str)>21) {
                                                                $strCut = substr($str, 0, 21);
                                                                $str = substr($strCut, 0, strrpos($strCut, ' ')).' ... ';
                                                            }
                                                            echo $str;
                                                        ?>
                                                    </h3>
                                                </a>
                                                <p class="price-product1">
                                                    <?php echo number_format($row['price_sale'] - ($row['price_sale'] * $row['sale'] / 100)) ?>₫
                                                </p>
                                            </div>
                                        </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>

                    
                </div>
                <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
                    <?php $this->load->view('frontend/modules/tips-news'); ?> 
                </div>
        </div>
    </div>
</div>
</div>
</section>
<script type="text/javascript">
    function sortby(option){
        var strurl="<?php echo base_url();?>"+'/sanpham/index';
        jQuery.ajax({
            url: strurl,
            type: 'POST',
            dataType: 'json',
            data: {'sapxep': option},
            success: function(data) {
                $('#list-product').html(data);
            }
        });
    }
</script>

