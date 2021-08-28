<!-- <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 products-sale-off"> -->
    <div class="widget">
        <p>Sản phẩm khuyến mãi</p>
        <div class="panel-left-body">
            <?php
                $products = $this->Mproduct->product_sale('4');
                foreach ($products as $product):?>
                    <!-- <div id="post-list-footer" class="sidebar_menu">
                        <div class="spost clearfix">
                            <div class="entry-image">
                                <a href="<?php echo $product['alias'] ?>" title="<?php echo $product['name'] ?>">
                                    <img src="public/images/products/<?php echo $product['img'] ?>">
                                </a>
                            </div>
                            <div class="entry-c">
                                <div class="entry-title">
                                    <a class="ws-nw overflow ellipsis" href="<?php echo $product['alias'] ?>" title="$product['name']"><?php echo $product['name'] ?></a>
                                </div>
                                <ul class="entry-meta">
                                    <li class="color">
                                        <ins><?php echo number_format($product['price_sale'] - ($product['price_sale'] * $product['sale'] / 100)) ?>₫</ins>
                                        <del><?php echo number_format($product['price_sale']) ?>₫</del>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div> -->




                    <div class="col-lg-12 padding-5">
                        <div class="product">
                            <?php if($product['sale'] > 0) :?>
                                <div class="giam-percent">
                                    <span class="text-giam-percent">Giảm <?php echo $product['sale'] ?>%</span>
                                </div>
                            <?php endif; ?>
                            <a href="<?php echo $product['alias'] ?>" title="<?php echo $product['name'] ?>" >
                                <img class="img-p border"src="public/images/products/<?php echo $product['avatar'] ?>" alt="" style="height: 105px;max-width: 175px;">
                            </a>
                            <a href="<?php echo $product['alias'] ?>" title="<?php echo $product['name'] ?>" class="text-center title-product">
                                <h3>
                                    <?php
                                        $str = strip_tags($product['name']);
                                        if(strlen($str)>30) {
                                            $strCut = substr($str, 0, 30);
                                            $str = substr($strCut, 0, strrpos($strCut, ' ')).' ... ';
                                        }
                                        echo $str;
                                    ?>
                                </h3>
                            </a>
                            <p class="price-product1">
                                <?php echo number_format($product['price_sale'] - ($product['price_sale'] * $product['sale'] / 100)) ?>₫
                            </p>
                        </div>
                    </div>
            <?php endforeach; ?>
        </div>
    </div>
<!-- </div> -->
