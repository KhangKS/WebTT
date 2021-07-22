<div class="container">
	<div class="row">
		<div class="col-md-3 col-sm-3 hidden-xs">
		</div>
		<div class="col-md-6 col-sm-6 col-xs-12">
			<form action="" accept-charset="UTF-8" action="" id="reset_password" method="post">
				<div id="login">
					<div class="acctitle acctitlec">Cập nhật thông tin cá nhân</div>
					<div class="acc_content clearfix" style="display: block;">
						<div class="col_full">
							<label for="fullname">Họ và tên:<span class="require_symbol">* </span></label>
							<input type="text" id="fullname" name="fullname" value="<?php echo $customer['fullname'] ?>" class="form-control">
							<div class="error" id="password_error"><?php echo form_error('fullname')?></div>
						</div>
						<div class="col_full">
							<label for="username">Tên tài khoản:<span class="require_symbol">* </span></label>
							<input type="text" id="username" name="username" value="<?php echo $customer['username'] ?>" class="form-control" readonly>
							<div class="error" id="password_error"><?php echo form_error('username')?></div>
						</div>
						<div class="col_full">
							<label for="phone">Số điện thoại:<span class="require_symbol">* </span></label>
							<input type="number" id="phone" name="phone" value="<?php echo $customer['phone'] ?>" class="form-control">
							<div class="error" id="password_error"><?php echo form_error('phone')?></div>
						</div>
						<div class="col_full">
							<label for="email">Email:<span class="require_symbol">* </span></label>
							<input type="text" id="email" name="email" value="<?php echo $customer['email'] ?>" class="form-control">
							<div class="error" id="password_error"><?php echo form_error('email')?></div>
						</div>
						<div class="col_full" style="text-align: center;">
							<button class="button button-3d button-black" id="login-form-submit" name="login-form-submit" type="submit" value="login">Lưu thay đổi</button>
						</div>

					</div>
				</div>
			</form>
		</div>
	</div>
</div>