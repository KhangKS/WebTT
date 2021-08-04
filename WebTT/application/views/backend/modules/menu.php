<aside class="main-sidebar">
    
    <section class="sidebar">
        <ul class="sidebar-menu">
            
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 15) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin">
                            <i class="fas fa-chart-bar"></i> <span>Thống kê</span>
                        </a>
                    </li>';
                } 
            ?>

            <li class="header">QUẢN LÝ CỬA HÀNG</li>
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 1) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/content">
                            <i class="glyphicon glyphicon-list"></i><span>Tin tức</span>
                        </a>
                    </li>';
                } 
            ?>

            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 2) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/product">
                            <i class="fa fa-leaf"></i><span>Sản phẩm</span>
                        </a>
                    </li>';
                } 
            ?>
            
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 3) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/category">
                            <i class="fa fa-indent"></i><span>Loại sản phẩm</span>
                        </a>
                    </li>';
                } 
            ?>
            
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 4) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/producer">
                            <i class="fa fa-gift"></i><span>Nhà cung cấp</span>
                        </a>
                    </li>';
                } 
            ?>
            
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 5) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/info">
                            <i class="fas fa-info" style="margin-right: 7px; margin-left: 5px;"></i> <span>Thông tin</span>
                        </a>
                    </li>';
                } 
            ?>

            <li class="header">QUẢN LÝ BÁN HÀNG</li>
            
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 6) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/warehouse">
                            <i class="fas fa-warehouse" style="margin-right: 5px;"></i> <span>Kho</span>
                        </a>
                    </li>';
                } 
            ?>
           
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 7) == 1){
                echo 
                    ' <li class="treeview">
                        <a href="admin/coupon">
                            <i class="fas fa-cart-arrow-down" style="margin-right: 5px;"></i> <span>Mã giảm giá</span>
                        </a>
                    </li>';
                } 
            ?>
            
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 8) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/contact">
                            <i class="fa fa-envelope"></i> <span>Liên hệ</span>
                        </a>
                    </li>';
                } 
            ?>
            
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 9) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/orders">
                            <i class="fa fa-shopping-cart"></i> <span>Đơn hàng</span>
                        </a>
                    </li>';
                } 
            ?>
            
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 10) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/customer">
                            <i class="fa fa-user"></i><span>Khách hàng</span>
                        </a>
                    </li>';
                } 
            ?>
            
            <?php 
                if($this->Mrole_has_permission->has_permission($user['role'], 11) == 1){
                echo 
                    '<li class="treeview">
                        <a href="admin/sliders">
                            <i class="fa fa-cogs"></i> <span>Giao diện</span>
                        </a>
                    </li>';
                } 
            ?>

            <li class="header">CÀI ĐẶT</li>

            <li class="treeview">
                <a href="#">
                    <i class="glyphicon glyphicon-cog"></i><span>Hệ thống</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <?php 
                        if($this->Mrole_has_permission->has_permission($user['role'], 11) == 1){
                        echo 
                            '<li class="active">
                                <a href="admin/configuration/update">
                                    <i class="fa fa-cogs"></i> Cấu hình
                                </a>
                            </li>';
                        } 
                    ?>

                    <?php 
                        if($this->Mrole_has_permission->has_permission($user['role'], 11) == 1){
                        echo 
                            '<li>
                                <a href="admin/useradmin">
                                    <i class="fa fa-users"></i> Nhân viên
                                </a>
                            </li>';
                        } 
                    ?>

                    <?php 
                        if($this->Mrole_has_permission->has_permission($user['role'], 14) == 1){
                        echo 
                            '<li>
                                <a href="admin/role">
                                    <i class="fa fa-users"></i> Quyền
                                </a>
                            </li>';
                        } 
                    ?>
                </ul>
            </li>
            <li><a href="admin/user/logout.html"><i class="fas fa-sign-out-alt"></i> <span>Thoát</span></a></li>
    </ul>
</section>
<!-- /.sidebar -->
</aside>