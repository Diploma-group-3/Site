<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Продані замовлення</title>
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

        .logo {
            position: absolute;
            width: 95px;
            height: 95px;
            left: 40px;
            top: 30px;
            background: #D9D9D9;
        }

        .logo-text {
            position: absolute;
            width: 57px;
            height: 29px;
            left: 59px;
            top: 63px;
            font-family: 'Inter', sans-serif;
            font-size: 24px;
            color: #000000;
        }

        .menu-burger {
            position: absolute;
            width: 40px;
            height: 40px;
            left: 1331px;
            top: 57px;
            background: url('static/images/menu_icon.png') no-repeat center center;
        }

        .add-publication,
        .sold-orders,
        .settings {
            position: absolute;
            font-size: 24px;
            font-weight: 500;
            line-height: 36px;
            letter-spacing: -0.011em;
            color: rgba(0, 0, 0, 0.8);
        }

        .add-publication {
            width: 190px;
            height: 36px;
            left: 270px;
            top: 59px;
        }

        .sold-orders {
            width: 139px;
            height: 36px;
            left: 697px;
            top: 59px;
        }

        .settings {
            width: 97px;
            height: 36px;
            left: 1076px;
            top: 59px;
        }

        .search-bar {
            position: absolute;
            width: 1000px;
            height: 30px;
            left: calc(50% - 1000px/2);
            top: 195px;
        }

        .search-icon,
        .filter-icon {
            position: absolute;
            width: 30px;
            height: 30px;
        }

        .search-icon {
            left: 220px;
            top: 195px;
            background: url('static/images/search_icon.png') no-repeat center center;
        }

        .filter-icon {
            left: 1190px;
            top: 195px;
            background: url('static/images/filter_icon.png') no-repeat center center;
        }

        .line {
            position: absolute;
            width: 900px;
            height: 0;
            left: 270px;
            top: 225px;
            border: 3px solid #5F5F5F;
        }

        .orders-container {
            position: absolute;
            left: 150px;
            top: 275px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .order {
            display: flex;
            align-items: center;
            width: 1130px;
            height: 80px;
            background: #D9D9D9;
            border-radius: 15px;
            padding: 0 20px;
        }

        .order-text {
            font-size: 16px;
            line-height: 24px;
            letter-spacing: -0.011em;
            color: #000000;
            padding-left: 50px;
        }

        .order:nth-child(odd) .order-text {
            color: #5F5F5F;
        }

        .order:first-child {
            background: #A9A9A9;
        }

        .order:first-child .order-text {
            color: #ffffff;
        }

        .order .order-id {
            flex: 1;
        }

        .order .name {
            flex: 1;
        }

        .order .address {
            flex: 2;
        }

        .order .date {
            flex: 1;
        }

        .order .hub {
            flex: 1;
        }

        .order .status {
            flex: 1;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="logo"></div>
        <div class="logo-text">Logo</div>
        <div class="menu-burger"></div>
        <div class="add-publication">Add publication</div>
        <div class="sold-orders">Sold orders</div>
        <div class="settings">Settings</div>
        <div class="search-bar"></div>
        <div class="search-icon"></div>
        <div class="line"></div>
        <div class="filter-icon"></div>
        <div class="orders-container">
            <div class="order">
                <div class="order-text order-id">Booking ID</div>
                <div class="order-text name">Name</div>
                <div class="order-text address">Address</div>
                <div class="order-text date">Date</div>
                <div class="order-text hub">Hub</div>
                <div class="order-text status">Status</div>
            </div>
            <div class="order">
                <div class="order-text order-id">000123</div>
                <div class="order-text name">Volodymyr</div>
                <div class="order-text address">Khreshchatyk Street</div>
                <div class="order-text date">14.07.2024</div>
                <div class="order-text hub">Name</div>
                <div class="order-text status">Delivered</div>
            </div>
            <div class="order">
                <div class="order-text order-id">000124</div>
                <div class="order-text name">Andrii</div>
                <div class="order-text address">Volodymyrska Street</div>
                <div class="order-text date">14.07.2024</div>
                <div class="order-text hub">Name</div>
                <div class="order-text status">On Process</div>
            </div>
            <div class="order">
                <div class="order-text order-id">000125</div>
                <div class="order-text name">Olena</div>
                <div class="order-text address">Saksahanskoho Street</div>
                <div class="order-text date">13.07.2024</div>
                <div class="order-text hub">Name</div>
                <div class="order-text status">Delivered</div>
            </div>
            <div class="order">
                <div class="order-text order-id">000126</div>
                <div class="order-text name">Yurii</div>
                <div class="order-text address">Baseyna Street</div>
                <div class="order-text date">13.07.2024</div>
                <div class="order-text hub">Name</div>
                <div class="order-text status">Canceled</div>
            </div>
            <div class="order">
                <div class="order-text order-id">000127</div>
                <div class="order-text name">Oleksandr</div>
                <div class="order-text address">Ivana Franka Street</div>
                <div class="order-text date">12.07.2024</div>
                <div class="order-text hub">Name</div>
                <div class="order-text status">Delivered</div>
            </div>
        </div>
    </div>
</body>

</html>