<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<style>
.rainbow {
	background-image: -webkit-gradient(linear, left top, right top, color-stop(0, #f22),
		color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff),
		color-stop(0.6, #2f2), color-stop(0.75, #2f2), color-stop(0.9, #ff2),
		color-stop(1, #f22));
	background-image: gradient(linear, left top, right top, color-stop(0, #f22),
		color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff),
		color-stop(0.6, #2f2), color-stop(0.75, #2f2), color-stop(0.9, #ff2),
		color-stop(1, #f22));
	color: transparent;
	-webkit-background-clip: text;
	background-clip: text;
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("#registerForm").keyup(function() {
			if ($("#id").val().length < 2 || $("#id").val().length > 10) {
				$("#idcheck").text("아이디는 2자이상 10자이하여야 합니다");
				return false;
			} else {
				$.ajax({
					type : "post",
					url : "idcheck.do",
					data : $("#registerForm").serialize(),
					success : function(data) {
						if (data == "ok") {
							$("#idcheck").text("사용가능한 아이디입니다람쥐다람쥐~");
						} else if (data == "fail") {
							$("#idcheck").text("사용 불가능한 아이디입니다");
						}
					}
				}) //ajax 시작
			} //첫번째 else
		}); //keyup form
	}); //ready bracelet

	$(document).ready(function() {
		$("#registerForm").keyup(function() {
			if ($("#password").val() == "" || $("#password2").val() == "") {
				$("#passwordcheck").text("");
				return false;
			} else if ($("#password").val() == $("#password2").val()) {
				$("#passwordcheck").text("비밀번호가 일치합니다.");
			} else {
				$("#passwordcheck").text("비밀번호가 일치하지 않습니다.");
			}

		});//keyup

	}); //ready
</script>
<div class="row">
	<div class="col-sm-5 login-form">
		<div class="panel panel-default">
			<div class="panel-intro text-center">
				<h1 class="logo">
					<i class="fa fa-recycle"></i> Job∩Study
				</h1>
			</div>
			<div class="panel-body">
				<form action="register.do" method="post" id="registerForm">
					<div id="idcheck" class="rainbow"></div>
					<div class="form-group">
						<input type="text" placeholder="아이디" class="form-control input-lg"
							name="id" id="id">
					</div>
					<div class="form-group">
						<input type="password" placeholder="비밀번호"
							class="form-control input-lg" name="password" id="password">
					</div>
					<div id="passwordcheck" class="rainbow"></div>
					<div class="form-group">
						<input type="password" placeholder="비밀번호확인"
							class="form-control input-lg" name="password2" id="password2">
					</div>
					<div class="form-group">
						<input type="text" placeholder="이름" class="form-control input-lg"
							name="name">
					</div>
					<div class="form-group">
						<input type="text" placeholder="지역" class="form-control input-lg"
							name="location">
					</div>
					<div class="form-group">
						<input type="text" placeholder="전화번호"
							class="form-control input-lg" name="tel">
					</div>
					<div class="form-group">
						<input type="text" placeholder="성별" class="form-control input-lg"
							name="gender">
					</div>
					<div class="form-group">
						<input type="text" placeholder="생년월일"
							class="form-control input-lg" name="birthdate">
					</div>
					<div class="form-group">
						<div class="checkbox">
							<label for="terms" class="string optional"> <input
								type="checkbox" style="" id="terms"> I Agree with Term
								and Conditions
							</label>
						</div>
					</div>
					<div class="form-group">
						<button class="btn btn-block btn-custom">Sign Up</button>
					</div>
				</form>
			</div>
			<div class="panel-footer">
				<p class="text-center pull-right">
					<a href="login.html"> Have an account? </a>
				</p>
				<div style="clear: both"></div>
			</div>
		</div>
	</div>
</div>