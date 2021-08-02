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