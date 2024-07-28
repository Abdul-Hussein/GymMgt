$(document).ready(function() {

	const togglePassword = document.querySelector('#togglePassword');
	const password = document.querySelector('#password');

	console.log(password.getAttribute('type'));

	togglePassword.addEventListener('click', function(e) {

		const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
		password.setAttribute('type', type);

		this.classList.toggle('fa-eye-slash');
	});


	$("#register").click(function() {

		var username = $("#username").val();

		var email = $("#email").val();

		var phone = $("#phone").val();

		var password = $("#password").val();

		if (username != "" && username != null && email != "" && email != null && phone != "" && phone != null) {

			var loginDto = {
				"userName": username,
				"email": email,
				"phone": phone,
				"password": password,
			}


			$.ajax({
				url: "/gym-mgmt/api/users/register",
				type: "POST",
				dataType: 'json',
				contentType: "application/json",
				data: JSON.stringify(loginDto),

				success: function(data) {

					if (data == true) {

						swal({
							title: "",
							text: "Register Successfully.",
							type: "success",
							confirmButtonColor: '#DD6B55',
							confirmButtonText: 'Ok',
						}, function(isConfirm) {

							if (isConfirm) {
								window.location.reload();
							} else {

							}
						});
					}
					else {

						swal({
							title: "",
							text: "Username is existing",
							type: "warning",
						});
					}



				}
			});

		} else {
			swal({
				title: "",
				text: "Please enter a all fields",
				type: "warning",
			});

		}

	});


	$("#password").keyup(function(event) {
		if (event.keyCode === 13) {
			$("#employeelogin").click();
		}
	});


});


