$(document).ready(function() {
    const gymMembershipUrl = "api/gymMemberships/view";
    
    const togglePassword = document.querySelector('#togglePassword');
    const password = document.querySelector('#password');

    togglePassword.addEventListener('click', function() {
        const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
        password.setAttribute('type', type);
        this.classList.toggle('fa-eye-slash');
    });

    $("#login").click(function() {
        var username = $("#username").val();
        var password = $("#password").val();

        console.log("Username: ", username);
        console.log("Password: ", password);

        if (username && password) {
            var loginDto = {
                "userName": username,
                "password": password,
            };

            console.log("Sending loginDto: ", loginDto);

            $.ajax({
                url: "/gym-mgmt/api/users/login",
                type: "POST",
                dataType: 'json',
                contentType: "application/json",
                data: JSON.stringify(loginDto),
                success: function(data) {
                    console.log("Server Response: ", data);
                    
                    if (data === true) {  // Checking the actual response type
                        swal({
                            title: "",
                            text: "Logged in Successfully.",
                            type: "success",
                            confirmButtonColor: '#DD6B55',
                            confirmButtonText: 'Ok',
                        }, function(isConfirm) {
                            if (isConfirm) {
                                window.location.href = gymMembershipUrl;  // Redirecting after successful login
                            }
                        });
                    } else {
                        swal({
                            title: "",
                            text: "Username or password is incorrect",
                            type: "warning",
                        });
                    }
                },
                error: function(xhr, status, error) {
                    console.log("AJAX Error: ", xhr, status, error);
                    swal({
                        title: "",
                        text: "An error occurred: " + error,
                        type: "error",
                    });
                }
            });
        } else {
            swal({
                title: "",
                text: "Please enter all fields",
                type: "warning",
            });
        }
    });

    $("#password").keyup(function(event) {
        if (event.keyCode === 13) {
            $("#login").click();
        }
    });

});
