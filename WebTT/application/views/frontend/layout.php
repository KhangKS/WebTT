<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="<?php echo base_url(); ?>"></base>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>
        <?php 
            if(isset($title))
                echo "Huy Minh Cần Thơ";
            else
                echo "Huy Minh Cần Thơ";
        ?>
    </title>
    <link rel="icon" type="image/x-icon" href="public/images/cart2.png">
    <link href="public/css/bootstrap.css" rel="stylesheet">
    <link href="public/css/font-awesome.css" rel="stylesheet">
    <link href="public/css/lte.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <link href="public/css/owl.carousel.min.css" rel="stylesheet">
    <link href="public/css/AdminLTE.css" rel="stylesheet">
    <link rel="stylesheet" href="public/css/style-jc.css">
    <link href="public/css/menu-tab.css" rel="stylesheet">
    <link href="public/css/style.css" rel="stylesheet">
    <link href="public/css/jquery.bxslider.css" rel="stylesheet">
    <link href="public/css/flexslider.css" rel="stylesheet">
    <link rel="stylesheet" href="public/slick/slick.css" type="text/css">

    
    
        <!-- <script src="public/js/jquery-2.2.3.min.js"></script> -->
    </head>
    <body>
        <div class='thetop'></div>
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!-- TOPBAR -->
        <?php 
            $this->load->view('frontend/modules/topbar');
        ?>
        <!-- HEADER LOGO + SEARCH -->
        <?php 
            $this->load->view('frontend/modules/logo-search');
        ?>

        <section id="menu-slider">
            <div class="container">
                <div class="border">
                    <?php 
                        $this->load->view('frontend/modules/panel-left');
                    ?>

                    <!--CONTENT-->
                    <?php 
                        if(isset($com,$view)){
                            $this->load->view('frontend/components/'.$com.'/'.$view);
                        }
                        else
                            $this->load->view('frontend/components/Error404/index');
                    ?>
                </div>
            </div>
        </section>

        <!--FOOTER-->
        <?php 
            $this->load->view('frontend/modules/footer');
        ?>
        
        <script src="public/js/jquery-2.2.3.min.js"></script>
        <script src="public/js/bootstrap.js"></script>
        <script src="public/js/app.min.js"></script>
        <script src="public/js/owl.carousel.js"></script>
        <script src="public/js/jquery.jcarousel.js"></script>
        <script src="public/js/jcarousel.connected-carousels.js"></script>
        <script src="public/js/scroll.js"></script>
        <script src="public/js/search-quick.js"></script>
        <script src="public/js/custom-owl.js"></script>
        <script src="public/js/jquery.flexslider.js"></script>
        <script src="public/js/script.js"></script>
        <!-- <script type="text/javascript">
            $(document).ready(function() {
                alert(123);
                if($('.slider').length>0){
                    $('.slider').slick({
                        infinite: true,
                        speed: 500,
                        arrows: true,
                        dots: false,
                        prevArrow:'<a href="#" title="" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>',
                        nextArrow:'<a href="#" title="" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>'
                    });
                }
            });
        </script> -->
        <script src="public/slick/slick.js"></script>
        <div class='scrolltop'>
            <div class='scroll icon'><i class="fa fa-4x fa-angle-up"></i></div>
        </div>
    </body>
</html>

