<div class="widget">
	<p>Bài viết mới nhất</p>
	<div class="tab-container ">
		<?php  
		$posts = $this->Mcontent->content_get_news(10);
		foreach ($posts as $value) :?>
			<div class="spost clearfix">
				<div class="entry-image e-img">
					<a href="tin-tuc/<?php echo $value['alias'] ?>" class="nobg a-circle">
						<img class="img-circle-custom" src="public/images/posts/<?php echo $value['img']; ?>" alt="Mua phụ kiện theo Combo giảm đến 30%">
					</a>
				</div>
				<div class="entry-c">
					<div class="entry-title e-title">
						<h4 style="padding-right: 10px;">
							<a href="tin-tuc/<?php echo $value['alias'] ?>">
								<?php
                                    $str = strip_tags($value['title']);
                                    if(strlen($str)>35) {
                                        $strCut = substr($str, 0, 35);
                                        $str = substr($strCut, 0, strrpos($strCut, ' ')).' ... ';
                                    }
                                    echo $str;
                                ?>
                            </a>
						</h4>
					</div>
				</div>
			</div>
		<?php endforeach; ?>
	</div>
</div>
