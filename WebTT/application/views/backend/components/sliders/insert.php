<?php echo form_open_multipart('admin/sliders/insert'); ?>
<div class="content-wrapper" style="min-height: 454px;">
    <form action="<?php echo base_url() ?>admin/sliders/insert.html" enctype="multipart/form-data" method="post" accept-charset="utf-8">
        <section class="content-header">
            <h1><i class="glyphicon glyphicon-picture"></i> Thêm Sliders</h1>
            <div class="breadcrumb">
                <button name="THEM_NEW" type="submit" class="btn btn-primary btn-sm" id="btn">
                    <span class="glyphicon glyphicon-floppy-save"></span> Lưu[Thêm]
                </button>
                <a class="btn btn-primary btn-sm" href="admin/sliders" role="button">
                    <span class="glyphicon glyphicon-remove"></span> Thoát
                    
                </a>
            </div>
        </section>
        <section class="content">
          <!-- Info boxes -->
          <div class="row">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-body">
                        <div class="col-md-9">
                            <!--ND-->
                            <div class="form-group">
                                <label>Tên sliders<span class = "maudo">(*)</span></label>
                                <input type="text" name="name" placeholder="Tên sliders" class="form-control" value="<?php echo set_value('name');?>">
                                <div class="error maudo" id="error-name"><?php echo form_error('name')?></div>
                            </div>
                            <!--/.ND-->
                        </div>
                        <div class="col-md-3">
                                
                            <div class="form-group">
                                <label>Hình ảnh <span class = "maudo">(*)</span></label>
                                <input type="file" name="img" class="form-control" required="" value="<?php echo set_value('img');?>">
                                <div class="error maudo" id="password_error"><?php echo form_error('img')?></div>
                            </div>
                            <div class="form-group">
                                <label>Trạng thái </label>
                                <select name="status" class="form-control">
                                    <option <?php if (set_value('status') == 1) echo 'selected' ?> value="1">Hoạt động</option>
                                    <option <?php if (set_value('status') == "0") echo 'selected' ?> value="0">Ngừng hoạt động</option>
                                </select>
                            </div>
                            </div>
                    </div>
                </div><!-- /.box -->
            </div><!-- /.row -->
        </section><!-- /.content -->
    </form>         
</div>
<script src="public/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $(`#btn`).click(function(event) {
            var iChars = "!`@#$%^&*()+=-[]\\\';,./{}|\":<>?~_";   
            var name = $(`input[name="name"]`).val();

            for (var i = 0; i < name.length; i++)
            {      
                if (iChars.indexOf(name.charAt(i)) != -1)
                {    
                    event.preventDefault();
                    $(`#error-name`).html(`Tên sliders không được chứa ký tự đặc biệt.`);
                    break;
                }
            }
        })
    });
</script>