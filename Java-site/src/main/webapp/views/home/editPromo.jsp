<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Система Промокодів Створення</title>
    <link
        href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;600&family=Inter:wght@400&family=Poppins:wght@400&display=swap"
        rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #F3EFED;
            font-family: 'Inter', sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            margin-top: 60px;
            position: relative;
            width: 1440px;
            height: 1024px;
            background: #F3EFED;
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

        .menu-icon {
            position: absolute;
            width: 40px;
            height: 40px;
            left: 1331px;
            top: 58px;
            background: url('static/images/menu_icon.png') no-repeat center center;
        }

        .menu-item {
            position: absolute;
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 500;
            font-size: 24px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: rgba(0, 0, 0, 0.8);

        }

        .add-publication {
            width: 190px;
            height: 36px;
            left: 270px;
            top: 60px;
        }

        .sold-orders {
            width: 139px;
            height: 36px;
            left: 697px;
            top: 60px;
        }

        .settings {
            width: 97px;
            height: 36px;
            left: 1076px;
            top: 60px;
        }

        .button {
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 10px;
            position: absolute;
            width: 210px;
            height: 46px;
            background: #5F5F5F;
            border-radius: 10px;
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 24px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: #FFFFFF;
            cursor: pointer;
        }

        .button1 {
            left: 155px;
            top: 778px;

        }

        .button2 {
            left: 385px;
            top: 778px;

        }

        .button3 {
            left: 845px;
            top: 778px;
        }

        .button4 {
            left: 1075px;
            top: 778px;

        }

        .button5 {
            left: 385px;
            top: 520px;
            width: 325px;
        }

        .button6 {
            left: 730px;
            top: 520px;
            width: 325px;
        }

        .button7 {
            left: 730px;
            top: 380px;
            width: 325px;
        }

        .button8 {
            left: 385px;
            top: 380px;
            width: 325px;
        }

        .label {
            position: absolute;
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 16px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: #000000;
        }

        .promo-code {
            width: 115px;
            height: 24px;
            left: 385px;
            top: 346px;
        }

        .discount {
            width: 115px;
            height: 24px;
            left: 730px;
            top: 346px;
        }

        .validity {
            width: 115px;
            height: 24px;
            left: 730px;
            top: 486px;
        }

        .status {
            width: 115px;
            height: 24px;
            left: 385px;
            top: 486px;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="logo-container">
            <div class="logo"></div>
            <div class="logo-text">Logo</div>
        </div>
        <div class="menu-icon"></div>
        <div class="menu-item add-publication">Add publication</div>
        <div class="menu-item sold-orders">Sold orders</div>
        <div href="settings.jsp" class="menu-item settings">Settings</div>
        <div class="button button1">Save</div>
        <div class="button button2">Cancel</div>
        <div class="button button3">Add</div>
        <div class="button button4">Change</div>

        <div class="button button5">Status</div>
        <div class="button button6">Validity</div>
        <div class="button button7">30%</div>
        <div class="button button8">ShoSho</div>
        <div class="label promo-code">Promo code</div>
        <div class="label discount">Discount (%)</div>
        <div class="label validity">Validity</div>
        <div class="label status">Status</div>
    </div>
</body>

</html>