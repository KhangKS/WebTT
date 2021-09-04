<section id="content">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 slider-main pull-left mb-1">
            <?php 
            $this->load->view('frontend/modules/slider');
            ?>
        </div>
    </div>
    <div class="row wraper">
        <!-- <div class="banner-product">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <img src="public/images/sp.png">
            </div>
        </div> -->
    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
        <div class="list-menu">
            <?php $this->load->view('frontend/modules/category'); ?> 
        </div>
        <?php $this->load->view('frontend/modules/news'); ?> 
    </div>
    <div class = "col-xs-12 col-sm-12 col-md-6 col-lg-6 product-content" id="list-content">
        <div class="product-wrap">
            <div class="fs-newsboxs">
                <?php foreach ($list as $news):?>
                    <div class="fs-ne2-it clearfix">
                        <div class="fs-ne2-if" >
                            <a class="fs-ne2-img" href="tin-tuc/<?php echo $news['alias']; ?>">
                                <img  src="public/images/posts/<?php echo $news['img']; ?>">
                            </a>
                            <div class="fs-n2-info" >
                                <h3><a class="fs-ne2-tit" href="tin-tuc/<?php echo $news['alias']; ?>" title=""><?php echo $news['title']; ?></a></h3>
                                <div class="fs-ne2-txt"><?php echo $news['introtext']; ?></div>
                                <p class="fs-ne2-bot">
                                    <span class="fs-ne2-user">
                                        <img class="lazy"src="" style="">
                                    </span> 
                                    <span><?php echo $news['created']; ?></span>
                                </p>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
            <div class = "row text-center">
                <ul class ="pagination">
                    <?php echo $pagination; ?>
                </ul>
            </div>
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
        <?php $this->load->view('frontend/modules/tips-news'); ?> 
    </div>
</section>
