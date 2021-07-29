    <div class="slider">
        <div class="container">
           
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 slider-main pull-left">
                <?php 
                $this->load->view('frontend/modules/slider');
                ?>
            </div>
        </div>
    </div>

    <div class="container" style="margin-top: 20px; margin-bottom: 20px;">
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 list-menu pull-left">
                <?php $this->load->view('frontend/modules/category'); ?>
            </div>
            <?php $this->load->view('frontend/modules/news'); ?> 
        </div>

        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
            <!-- Camera -->
            <div class="sale-title">
                <a href="san-pham/camera"><span>Camera (<?php echo $number_product_camera; ?> sản phẩm)</span></a>
                <?php 
                    foreach ($sub_category_camera as $row) :?>
                        <a href="san-pham/<?php echo $row['link'] ?>" class="float-right d-block mr-1"><span><?php echo $row['name']; ?></span></a>
                <?php endforeach; ?>
            </div>
            <div class="row">
                <?php 
                    foreach ($product_camera as $row) :?>
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

            <!-- Laptop -->
            <div class="sale-title">
                <?php $number = $this->Mproduct->count_product_by_category(3); ?>
                <a href="san-pham/laptop"><span>Laptop (<?php echo $number; ?> sản phẩm)</span></a>
            </div>
            <div class="row">
                <?php 
                    $product_sale = $this->Mproduct->product_by_category(3, 3);
                    foreach ($product_sale as $row) :?>
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

            <!-- Máy tính để bàn -->
            <div class="sale-title">
                <?php $number = $this->Mproduct->count_product_by_category(2); ?>
                <a href="san-pham/may-tinh-de-ban"><span>Máy tính để bàn (<?php echo $number; ?> sản phẩm)</span></a>
            </div>
            <div class="row">
                <?php 
                    $product_sale = $this->Mproduct->product_by_category(2, 3);
                    foreach ($product_sale as $row) :?>
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

            <!-- Máy in - photo -->
            <div class="sale-title">
                <?php $number = $this->Mproduct->count_product_by_category(1); ?>
                <a href="san-pham/may-in-photo"><span>Máy in - photo (<?php echo $number; ?> sản phẩm)</span></a>
            </div>
            <div class="row">
                <?php 
                    $product_sale = $this->Mproduct->product_by_category(1, 3);
                    foreach ($product_sale as $row) :?>
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

            <!-- Thiết bị y tế -->
            <div class="sale-title">
                <?php $number = $this->Mproduct->count_product_by_category(5); ?>
                <a href="san-pham/thiet-bi-y-te"><span>Thiết bị y tế (<?php echo $number; ?> sản phẩm)</span></a>
            </div>
            <div class="row">
                <?php 
                    $product_sale = $this->Mproduct->product_by_category(5, 3);
                    foreach ($product_sale as $row) :?>
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

            <!-- Phần mềm -->
            <div class="sale-title">
                <?php $number = $this->Mproduct->count_product_by_category(7); ?>
                <a href="san-pham/phan-mem"><span>Phần mềm (<?php echo $number; ?> sản phẩm)</span></a>
            </div>
            <div class="row">
                <?php 
                    $product_sale = $this->Mproduct->product_by_category(7, 3);
                    foreach ($product_sale as $row) :?>
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

            <!-- Báo trộm - Báo cháy -->
            <div class="sale-title">
                <?php $number = $this->Mproduct->count_product_by_category(13); ?>
                <a href="san-pham/bao-trom-bao-chay"><span>Báo trộm - Báo cháy (<?php echo $number; ?> sản phẩm)</span></a>
            </div>
            <div class="row">
                <?php 
                    $product_sale = $this->Mproduct->product_by_category(13, 3);
                    foreach ($product_sale as $row) :?>
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

            <!-- Vật tư ngành vàng -->
            <div class="sale-title">
                <?php $number = $this->Mproduct->count_product_by_category(8); ?>
                <a href="san-pham/vat-tu-nganh-vang"><span>Vật tư ngành vàng (<?php echo $number; ?> sản phẩm)</span></a>
            </div>
            <div class="row">
                <?php 
                    $product_sale = $this->Mproduct->product_by_category(8, 3);
                    foreach ($product_sale as $row) :?>
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

            <!-- Điện - Điện Máy -->
            <div class="sale-title">
                <?php $number = $this->Mproduct->count_product_by_category(10); ?>
                <a href="san-pham/dien-dien-may"><span>Điện - Điện Máy (<?php echo $number; ?> sản phẩm)</span></a>
            </div>
            <div class="row">
                <?php 
                    $product_sale = $this->Mproduct->product_by_category(10, 3);
                    foreach ($product_sale as $row) :?>
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

        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
            <?php $this->load->view('frontend/modules/tips-news'); ?> 
        </div>
    </div>




<!--<div class="home-blog">
    <div class="container">
        <div class="row-p">
            <div class="text-center">
                <h2 class="sectin-title title title-blue">Tin tức mới nhất</h2>
            </div>
        </div>
        <div class="blog-content">
            <?php  
            $listBaiViet=$this->Mcontent->content_list_home(6, 'all');
            foreach ($listBaiViet as $rowPost) :?>
                <div class="col-xs-12 col-12 col-sm-6 col-md-4 col-lg-4" style="margin: 5px;">
                    <div class="latest">
                        <a href="tin-tuc/<?php echo $rowPost['alias'] ?>">
                            <div class="tempvideo">
                                <img width="90%" src="public/images/posts/<?php echo $rowPost['img'] ?>">
                            </div>
                            <h3 style="color: #999;"><?php echo $rowPost['title'] ?></h3>
                        </a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>-->
            
<div class="adv">
    <section id="service" style="margin: 20px;">
        <div class="container">
            <div class="row">
                <div id="service_home" class="clearfix">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center m-b-xs-10">
                        <div class="service_item">
                            <div class="icon icon_product">
                                <img src="public/images/icon_142e7.png" alt="">
                            </div>
                            <div class="description_icon">
                                <span class="large-text">
                                    Miễn phí giao hàng
                                </span>
                                <span class="small-text">
                                    Cho hóa đơn từ 100,000,000 đ
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center m-b-xs-10">
                        <div class="service_item">
                            <div class="icon icon_product">
                                <img src="public/images/icon_242e7.png" alt="">
                            </div>
                            <div class="description_icon">
                                <span class="large-text">
                                    Giao hàng trong ngày
                                </span>
                                <span class="small-text">
                                    Với tất cả đơn hàng
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 text-center m-b-xs-10">
                        <div class="service_item">
                            <div class="icon icon_product">
                                <img src="public/images/icon_342e7.png" alt="">
                            </div>
                            <div class="description_icon">
                                <span class="large-text">
                                    Sản phẩm an toàn
                                </span>
                                <span class="small-text">
                                    Cam kết chính hãng
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Begin-->
    <!--End-->
</div>

