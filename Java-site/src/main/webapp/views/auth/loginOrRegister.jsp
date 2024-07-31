<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login or Registration</title>
    <link
        href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;600&family=Inter:wght@400&family=Poppins:wght@400&display=swap"
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

        .container {
            position: relative;
            width: 1440px;
            height: 1024px;
            background: #F3EFED;
        }

        .logo-container {
            margin-top: 30px;
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

        .title {
            position: absolute;
            width: 785px;
            height: 87px;
            left: 385px;
            top: 125px;
            font-family: 'Comfortaa', sans-serif;
            font-style: normal;
            font-weight: 500;
            font-size: 34px;
            line-height: 150%;
            text-align: right;
            letter-spacing: -0.011em;
            color: #000000;
        }

        .button-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            position: absolute;
            left: 845px;
            top: 362px;
        }

        .button {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            width: 325px;
            height: 80px;
            background: #D9D9D9;
            border-radius: 15px;
            cursor: pointer;
            margin-bottom: 30px;
        }

        .button-text {
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 36px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: #000000;
        }

        .character-container {
            position: absolute;
            width: 555px;
            height: 625px;
            left: 155px;
            top: 288px;
            background: #D9D9D9;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .character-text {
            font-family: 'Inter', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 40px;
            line-height: 48px;
            color: #000000;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="logo-container">
            <div class="logo"></div>
            <div class="logo-text">Logo</div>
        </div>
        <div class="title">Join the Future of Food Saving: Register Now or Log In to Your Account</div>
        <div class="button-container">
            <div class="button">
                <div class="button-text">Login</div>
            </div>
            <div class="button">
                <div class="button-text">Register</div>
            </div>
        </div>
        <div class="character-container">
            <div class="character-text">Персонаж</div>
        </div>
    </div>
</body>

</html>