<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Locations Page</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Inter', sans-serif;
            background: #F3EFED;
        }

        .container {
            position: relative;
            width: 1440px;
            margin: 0 auto;
        }

        .group-26 {
            position: absolute;
            width: 95px;
            height: 95px;
            left: 40px;
            top: 30px;
        }

        .group-26 .rectangle-1 {
            position: absolute;
            width: 95px;
            height: 95px;
            background: #D9D9D9;
        }

        .group-26 .logo {
            position: absolute;
            width: 57px;
            height: 29px;
            left: 19px;
            top: 33px;
            font-family: 'Inter', sans-serif;
            font-weight: 400;
            font-size: 24px;
            line-height: 29px;
            color: #070707;
        }

        .menu-burger {
            position: absolute;
            width: 40px;
            height: 40px;
            left: 1333px;
            top: 57px;
            background: url('static/images/menu_icon.png') no-repeat center center;
        }

        .add-publication,
        .sold-orders,
        .settings {
            position: absolute;
            height: 36px;
            top: 59px;
            font-weight: 500;
            font-size: 24px;
            line-height: 36px;
            letter-spacing: -0.011em;
            color: rgba(0, 0, 0, 0.8);
        }

        .add-publication {
            width: 190px;
            left: 270px;
        }

        .sold-orders {
            width: 139px;
            left: 697px;
        }

        .settings {
            width: 97px;
            left: 1076px;
        }

        .rectangle-2,
        .rectangle-3 {
            position: absolute;
            width: 1130px;
            border-radius: 30px;
            left: 155px;
        }

        .rectangle-2 {
            height: 260px;
            background: #A2D6F9;
            transition: height 0.3s ease;
        }

        .rectangle-4 {
            position: absolute;
            width: 1130px;
            height: 80px;
            background: #FF88CF;
            border-bottom-right-radius: 30px;
            border-bottom-left-radius: 30px;
            left: 155px;
            display: flex;
            justify-content: center;
            align-items: center;
            cursor: pointer;
        }

        .rectangle-3 {
            height: 260px;
        }

        .number,
        .name,
        .address,
        .category,
        .contact,
        .average-grade,
        .working-hours {
            position: absolute;
            font-weight: 500;
            font-size: 16px;
            line-height: 24px;
            letter-spacing: -0.011em;
            color: #070707;
            left: 200px;
        }

        .number {
            width: 54px;
            height: 72px;
            font-family: 'Inter', sans-serif;
            font-weight: 500;
            font-size: 48px;
            line-height: 72px;
        }

        .name {
            width: 97px;
            height: 48px;
            font-weight: 500;
            font-size: 32px;
            line-height: 48px;
        }

        .address,
        .contact {
            font-weight: 400;
            font-size: 16px;
        }

        .category {
            font-weight: 400;
            font-size: 16px;
        }

        .average-grade,
        .working-hours {
            font-weight: 400;
            font-size: 16px;
        }

        .search-icon,
        .filter-icon {
            position: absolute;
            width: 30px;
            height: 30px;
        }

        .search-icon {
            left: 220px;
            top: 197px;
            background: url('static/images/search_icon.png') no-repeat center center;
        }

        .filter-icon {
            left: 1190px;
            top: 197px;
            background: url('static/images/filter_icon.png') no-repeat center center;
        }

        .line-1 {
            position: absolute;
            width: 900px;
            left: 270px;
            top: 227px;
            border: 3px solid #5F5F5F;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="group-26">
            <div class="rectangle-1"></div>
            <div class="logo">Logo</div>
        </div>
        <div class="add-publication">Add Publication</div>
        <div class="sold-orders">Sold Orders</div>
        <a href="settings.jsp" class="settings">Settings</a>
        <div class="menu-burger"></div>

        <div class="search-icon"></div>
        <div class="line-1"></div>
        <div class="filter-icon"></div>

        <!-- Group 82 -->
        <div class="rectangle-2" id="rectangle-2-group-82" style="top: 275px;"></div>
        <div class="rectangle-4" onclick="expandRectangle('rectangle-2-group-82')" style="top: 455px;">
            <img src="static/images/vector.png" style="width: 54px; height: 28px;">
        </div>
        <div class="rectangle-3" style="top: 275px;"></div>
        <div class="number" style="left: 175px; top: 313px;">01</div>
        <div class="name" style="left: 249px; top: 331px;">Name</div>
        <div class="address" style="left: 1041px; top: 491px;">Address Khreshchatyk Street</div>
        <div class="category" style="left: 1149px; top: 350px;">Category code</div>
        <div class="contact" style="left: 175px; top: 491px;">+380 33 333 33 33</div>
        <div class="average-grade" style="left: 961px; top: 350px;">Average grade: 4.5</div>
        <div class="working-hours" style="left: 705px; top: 350px;">Working hours: 10:00 - 22:00</div>

        <!-- Group 83 -->
        <div class="rectangle-2" id="rectangle-2-group-83" style="top: 585px;"></div>
        <div class="rectangle-4" onclick="expandRectangle('rectangle-2-group-83')" style="top: 765px;">
            <img src="static/images/vector.png" style="width: 54px; height: 28px;">
        </div>
        <div class="rectangle-3" style="top: 585px;"></div>
        <div class="number" style="left: 175px; top: 623px;">02</div>
        <div class="name" style="left: 255px; top: 641px;">Name</div>
        <div class="address" style="left: 1035px; top: 801px;">Address Volodymyrska Street</div>
        <div class="category" style="left: 1149px; top: 658px;">Category code</div>
        <div class="contact" style="left: 175px; top: 801px;">+380 33 333 33 33</div>
        <div class="average-grade" style="left: 961px; top: 658px;">Average grade: 4.5</div>
        <div class="working-hours" style="left: 705px; top: 658px;">Working hours: 10:00 - 22:00</div>

        <!-- Group 84 -->
        <div class="rectangle-2" id="rectangle-2-group-84" style="top: 895px;"></div>
        <div class="rectangle-4" onclick="expandRectangle('rectangle-2-group-84')" style="top: 1075px;">
            <img src="static/images/vector.png" style="width: 54px; height: 28px;">
        </div>
        <div class="rectangle-3" style="top: 895px;"></div>
        <div class="number" style="left: 175px; top: 933px;">03</div>
        <div class="name" style="left: 257px; top: 951px;">Name</div>
        <div class="address" style="left: 1023px; top: 1111px;">Address Saksahanskoho Street</div>
        <div class="category" style="left: 1149px; top: 968px;">Category code</div>
        <div class="contact" style="left: 175px; top: 1111px;">+380 33 333 33 33</div>
        <div class="average-grade" style="left: 961px; top: 968px;">Average grade: 4.5</div>
        <div class="working-hours" style="left: 705px; top: 968px;">Working hours: 10:00 - 22:00</div>

        <!-- Group 85 -->
        <div class="rectangle-2" id="rectangle-2-group-85" style="top: 1205px;"></div>
        <div class="rectangle-4" onclick="expandRectangle('rectangle-2-group-85')" style="top: 1385px;">
            <img src="static/images/vector.png" style="width: 54px; height: 28px;">
        </div>
        <div class="rectangle-3" style="top: 1205px;"></div>
        <div class="number" style="left: 175px; top: 1243px;">04</div>
        <div class="name" style="left: 258px; top: 1261px;">Name</div>
        <div class="address" style="left: 1038px; top: 1421px;">Address Antonovycha Street</div>
        <div class="category" style="left: 1149px; top: 1278px;">Category code</div>
        <div class="contact" style="left: 175px; top: 1421px;">+380 33 333 33 33</div>
        <div class="average-grade" style="left: 961px; top: 1278px;">Average grade: 4.5</div>
        <div class="working-hours" style="left: 705px; top: 1278px;">Working hours: 10:00 - 22:00</div>
    </div>
    <script>
        function expandRectangle(rectangleId) {
            const rectangle = document.getElementById(rectangleId);
            if (rectangle) {
                const newHeight = rectangle.offsetHeight + 100;
                rectangle.style.height = newHeight + 'px';
            }
        }
    </script>
</body>

</html>