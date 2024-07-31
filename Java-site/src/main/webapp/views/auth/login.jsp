<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
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

        .login-title {
            position: absolute;
            width: 440px;
            height: 36px;
            left: calc(50% - 220px);
            top: 15%;
            font-family: 'Comfortaa', sans-serif;
            font-weight: 500;
            font-size: 34px;
            line-height: 150%;
            text-align: center;
            letter-spacing: -0.011em;
            color: #000000;
        }

        .login-container {
            position: absolute;
            width: 440px;
            height: 441px;
            left: calc(50% - 220px);
            top: calc(47% - 220.5px);
            background: #D9D9D9;
            border-radius: 15px;
            padding: 40px;
            box-sizing: border-box;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-label {
            font-weight: 400;
            font-size: 16px;
            line-height: 150%;
            margin-bottom: 0px;
            display: block;
            color: #000000;
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
            margin-bottom: -100px;
        }

        .forgot-password {
            font-size: 16px;
            color: #5F5F5F;
            cursor: pointer;
            margin-top: 5px;
            margin-bottom: 15px;
            margin-left: 230px;
            position: relative;
            top: 0px;
        }

        .register {
            position: absolute;
            width: 340px;
            height: 27px;
            left: calc(50% - 170px);
            top: 615px;
            font-size: 18px;
            text-align: center;
            color: #5F5F5F;
        }

        .register span {
            font-weight: bold;
        }

        .logo-container {
            position: absolute;
            width: 95px;
            height: 95px;
            left: 40px;
            top: 30px;
        }

        .logo {
            position: absolute;
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
            font-weight: 400;
            font-size: 24px;
            line-height: 29px;
            color: #000000;
            text-align: center;
        }

        .login-button {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 5px 57px;
            gap: 10px;
            position: absolute;
            width: 210px;
            height: 46px;
            left: calc(50% - 105px);
            top: 250px;
            background: #5F5F5F;
            border-radius: 10px;
            border: none;
            color: #FFFFFF;
            font-size: 24px;
            cursor: pointer;
        }

        .link {
            text-decoration: none;
            color: inherit;
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
            <div class="login-title">Administrator Login</div>
            <div class="login-container">
                <div class="input-group">
                    <label class="input-label" for="login">Login or Email</label>
                    <input class="input-field" type="text" id="login" name="login">
                </div>
                <div class="input-group">
                    <label class="input-label" for="password">Password</label>
                    <input class="input-field" type="password" id="password" name="password">
                </div>
                <a class="forgot-password link" href="/forgot-password">Forgot password?</a>
                <button class="login-button">Login</button>
            </div>
            <a class="register link" href="/registration.html">Don’t have an account? <span>Register</span></a>
        </div>
    </div>
</body>

</html>