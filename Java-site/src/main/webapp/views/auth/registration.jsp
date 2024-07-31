<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration</title>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;600&family=Poppins:wght@400&display=swap"
        rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #F3EFED;
            display: flex;
            justify-content: center;
            align-items: flex-start;
        }

        .registration-title {
            position: absolute;
            width: 900px;
            height: 36px;
            left: calc(50% - 450px);
            top: 126px;
            font-family: 'Comfortaa', sans-serif;
            font-style: normal;
            font-weight: 500;
            font-size: 34px;
            line-height: 150%;
            text-align: center;
            letter-spacing: -0.011em;
            color: #000000;
        }

        .registration-container {
            position: absolute;
            width: 440px;
            height: auto;
            left: calc(50% - 220px);
            top: calc(50% - 296.5px);
            background: #D9D9D9;
            border-radius: 15px;
            padding: 40px;
            box-sizing: border-box;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-label {
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 16px;
            line-height: 150%;
            color: #000000;
            margin-bottom: 5px;
            display: block;
        }

        .input-field {
            width: 100%;
            height: 43px;
            background: rgba(95, 95, 95, 0.6);
            border: none;
            border-radius: 5px;
            padding: 10px;
            box-sizing: border-box;
            font-size: 16px;
            color: #000000;
        }

        .forgot-password {
            font-size: 16px;
            color: #5F5F5F;
            cursor: pointer;
            text-align: center;
            display: block;
            margin-top: 10px;
        }

        .register-button {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 5px 57px;
            gap: 10px;
            width: 210px;
            height: 46px;
            background: #5F5F5F;
            border-radius: 10px;
            border: none;
            color: #FFFFFF;
            font-size: 24px;
            cursor: pointer;
            margin: 20px auto 0;
            text-align: center;
        }

        .register-button:hover {
            background: #4c4c4c;
        }

        .logo-container {
            position: absolute;
            width: 95px;
            height: 95px;
            left: 40px;
            top: 30px;
        }

        .logo {
            width: 95px;
            height: 95px;
            background: #D9D9D9;
        }

        .logo-text {
            position: absolute;
            width: 57px;
            height: 29px;
            left: 20px;
            top: 33px;
            font-family: 'Inter', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 24px;
            line-height: 29px;
            color: #000000;
            text-align: center;
        }

        .agreement {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .checkbox {
            width: 24px;
            height: 24px;
            border: 2px solid #909090;
            border-radius: 5px;
            margin-right: 10px;
            position: relative;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .checkbox.checked::before {
            content: '';
            position: absolute;
            left: 6px;
            top: 0px;
            width: 10px;
            height: 16px;
            border: solid #000;
            border-width: 0 3px 3px 0;
            transform: rotate(45deg);
            background-color: transparent;
        }

        .agreement-text {
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 16px;
            line-height: 150%;
            color: #000000;
        }

        .error-message {
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 16px;
            line-height: 150%;
            color: #FF0000;
            margin-top: 5px;
            display: none;
        }

        .center-container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            width: 100%;
            padding-top: 20px;
        }

        .content {
            width: 1440px;
            background: #F3EFED;
            position: relative;
            height: 1024px;
        }
    </style>
</head>

<body>
    <div class="center-container">
        <div class="content">
            <div class="logo-container">
                <div class="logo"></div>
                <div class="logo-text">Logo</div>
            </div>
            <div class="registration-title">Registration of the company administrator</div>
            <div class="registration-container">
                <div class="input-group">
                    <label class="input-label" for="fullname">First and Last Name</label>
                    <input class="input-field" type="text" id="fullname" name="fullname">
                </div>
                <div class="input-group">
                    <label class="input-label" for="email">Email</label>
                    <input class="input-field" type="email" id="email" name="email">
                    <div id="email-error" class="error-message">Invalid email address.</div>
                </div>
                <div class="input-group">
                    <label class="input-label" for="phone">Phone</label>
                    <input class="input-field" type="text" id="phone" name="phone">
                    <div id="phone-error" class="error-message">Invalid phone number.</div>
                </div>
                <div class="input-group">
                    <label class="input-label" for="password">Password</label>
                    <input class="input-field" type="password" id="password" name="password">
                    <div id="password-error" class="error-message">Must be 8 or more characters and contain at least 1
                        number and 1 special character.</div>
                </div>
                <div class="input-group">
                    <label class="input-label" for="repeat-password">Repeat Password</label>
                    <input class="input-field" type="password" id="repeat-password" name="repeat-password">
                    <div id="repeat-password-error" class="error-message">Passwords do not match.</div>
                </div>
                <div class="input-group">
                    <div class="agreement">
                        <div id="agree-checkbox" class="checkbox"></div>
                        <label class="agreement-text" for="agree">I agree to the use of my data</label>
                    </div>
                </div>
                <button id="register-button" class="register-button" disabled>Register</button>
            </div>
        </div>
    </div>
    <script>
        function validateEmail(email) {
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return emailRegex.test(email);
        }

        function validatePhone(phone) {
            const phoneRegex = /^\+?\d{10,15}$/;
            return phoneRegex.test(phone);
        }

        function validatePassword(password) {
            const passwordRegex = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
            return passwordRegex.test(password);
        }

        function checkPasswordsMatch(password, repeatPassword) {
            return password === repeatPassword;
        }
        /*
        document.getElementById('email').addEventListener('input', function () {
            const email = this.value;
            const errorElement = document.getElementById('email-error');
            if (!validateEmail(email)) {
                errorElement.style.display = 'block';
            } else {
                errorElement.style.display = 'none';
            }
        });
        
        document.getElementById('phone').addEventListener('input', function () {
            const phone = this.value;
            const errorElement = document.getElementById('phone-error');
            if (!validatePhone(phone)) {
                errorElement.style.display = 'block';
            } else {
                errorElement.style.display = 'none';
            }
        });
        */

        document.getElementById('password').addEventListener('input', function () {
            const password = this.value;
            const errorElement = document.getElementById('password-error');
            if (!validatePassword(password)) {
                errorElement.style.display = 'block';
            } else {
                errorElement.style.display = 'none';
            }
        });

        document.getElementById('repeat-password').addEventListener('input', function () {
            const repeatPassword = this.value;
            const password = document.getElementById('password').value;
            const errorElement = document.getElementById('repeat-password-error');
            if (!checkPasswordsMatch(password, repeatPassword)) {
                errorElement.style.display = 'block';
            } else {
                errorElement.style.display = 'none';
            }
        });

        document.getElementById('agree-checkbox').addEventListener('click', function () {
            const checkbox = this;
            checkbox.classList.toggle('checked');
            const isChecked = checkbox.classList.contains('checked');
            document.getElementById('register-button').disabled = !isChecked;
        });
    </script>
</body>

</html>
