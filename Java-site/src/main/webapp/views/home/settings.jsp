<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings Page</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
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

        .group-32 {
            position: absolute;
            width: 95px;
            height: 95px;
            left: 40px;
            top: 31px;
        }

        .rectangle-1 {
            position: absolute;
            width: 95px;
            height: 95px;
            left: 40px;
            background: #D9D9D9;
        }

        .logo {
            position: absolute;
            width: 57px;
            height: 29px;
            left: 59px;
            top: 33px;
            font-family: 'Inter', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 24px;
            line-height: 29px;
            color: #000000;
        }

        .menu-icon {
            position: absolute;
            width: 40px;
            height: 40px;
            left: 1331px;
            top: 58px;
            background: url('static/images/menu_icon.png') no-repeat center center;
        }


        .add-publication {
            position: absolute;
            width: 190px;
            height: 36px;
            left: 270px;
            top: 60px;
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 500;
            font-size: 24px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: rgba(0, 0, 0, 0.8);
        }

        .sold-orders {
            position: absolute;
            width: 139px;
            height: 36px;
            left: 697px;
            top: 60px;
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 500;
            font-size: 24px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: rgba(0, 0, 0, 0.8);
        }

        .settings {
            position: absolute;
            width: 97px;
            height: 36px;
            left: 1076px;
            top: 60px;
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 500;
            font-size: 24px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: rgba(0, 0, 0, 0.8);
        }

        .rectangle-37 {
            position: absolute;
            width: 210px;
            height: 210px;
            left: 155px;
            top: 236px;
            background: #D9D9D9;
            border-radius: 30px;
        }

        .button {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            gap: 10px;
            position: absolute;
            width: 325px;
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
        }

        .button-large {
            width: 670px;
            height: 46px;
        }

        .photo {
            position: absolute;
            width: 68px;
            height: 36px;
            left: 226px;
            top: 323px;
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 24px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: #000000;
        }

        .description {
            position: absolute;
            width: 900px;
            height: 90px;
            left: 270px;
            top: 814px;
            font-family: 'Poppins', sans-serif;
            font-style: normal;
            font-weight: 400;
            font-size: 16px;
            line-height: 150%;
            text-align: center;
            letter-spacing: -0.011em;
            color: #000000;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="group-32">
            <div class="rectangle-1"></div>
            <div class="logo">Logo</div>
        </div>
        <div class="menu-icon"></div>
        <div class="vector"></div>
        <div class="add-publication">Add publication</div>
        <div class="sold-orders">Sold orders</div>
        <div class="settings" href="settings.jsp">Settings</div>
        <div class="rectangle-37"></div>
        <div class="button" style="left: 615px; top: 236px;">Name</div>
        <div class="button button-large" style="left: 615px; top: 318px;">Email</div>
        <div class="button" style="left: 615px; top: 400px;">Password</div>
        <div class="button" style="left: 960px; top: 400px;">Phone</div>
        <div class="button" style="left: 960px; top: 236px;">Last name</div>
        <div class="photo">Photo</div>
        <div class="description">
            Pizza ipsum dolor meat lovers buffalo. Aussie bbq personal banana spinach meatball sausage roll. Mouth black
            hand ranch personal party ricotta. Onions steak parmesan green Aussie bacon pan. Spinach hand meat marinara
            and. Tossed wing tossed burnt pepperoni Philly pesto pepperoni parmesan ricotta. Hand bbq green pepperoni
            mushrooms ham cheese extra party. Bianca bell Hawaiian hand onions pineapple sautéed mushrooms.
        </div>
    </div>
</body>

</html>