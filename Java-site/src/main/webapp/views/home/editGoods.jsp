<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Card</title>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500&family=Poppins:wght@400&display=swap"
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

        .title {
            position: absolute;
            width: 209px;
            height: 50px;
            left: 615px;
            top: 225px;

            font-family: 'Comfortaa';
            font-style: normal;
            font-weight: 500;
            font-size: 36px;
            line-height: 150%;

            letter-spacing: -0.011em;

            color: #000000;


        }

        .description {
            position: absolute;
            width: 785px;
            height: 120px;
            left: 615px;
            top: 309px;
            font-family: 'Poppins', sans-serif;
            font-weight: 400;
            font-size: 16px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: #000000;
        }

        .button {

            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            padding: 5px 0px;
            gap: 10px;

            position: absolute;


            background: #5F5F5F;
            border-radius: 10px;

            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-size: 24px;
            line-height: 150%;

            letter-spacing: -0.011em;

            color: #FFFFFF;

            flex: none;
            order: 0;
            flex-grow: 0;

        }

        .buttonDate {
            width: 210px;
            height: 46px;
            left: 615px;
            top: 519px;

        }

        .buttonCategory {
            width: 210px;
            height: 46px;
            left: 845px;
            top: 519px;

        }

        .buttonLocation {
            width: 325px;
            height: 46px;
            left: 1075px;
            top: 519px;
        }

        .buttonAvaliableTime {
            width: 210px;
            height: 46px;
            left: 615px;
            top: 655px;

        }

        .buttonStatus {
            width: 210px;
            height: 46px;
            left: 845px;
            top: 655px;

        }

        .buttonPrice {
            width: 95px;
            height: 46px;
            left: 1075px;
            top: 655px;

        }

        .button-save {
            width: 210px;
            height: 46px;
            left: 960px;
            top: 791px;
        }

        .button-cancel {

            width: 210px;
            height: 46px;
            left: 1190px;
            top: 791px;

        }

        .status,
        .price,
        .availability,
        .category,
        .location,
        .dateValid {
            font-size: 20px;
            line-height: 150%;
            color: #000000;
            position: absolute;
            font-family: 'Poppins';
            font-style: normal;
            font-weight: 400;
            font-size: 20px;
            line-height: 150%;
            letter-spacing: -0.011em;
        }

        .dateValid {
            position: absolute;
            left: 615px;
            top: 489px;
        }

        .availability {
            position: absolute;
            left: 615px;
            top: 625px;
        }

        .category {
            position: absolute;
            left: 845px;
            top: 489px;
        }

        .location {
            left: 1075px;
            top: 489px;

        }

        .status {
            left: 845px;
            top: 625px;

        }

        .price {

            left: 1075px;
            top: 625px;

        }

        .photo-container {
            position: relative;
            width: 555px;
            height: 555px;
            left: 40px;
            top: 225px;
            background: #D9D9D9;
            border-radius: 30px;
        }

        .photo {
            position: absolute;
            width: 103px;
            height: 54px;
            left: calc(50% - 51.5px);
            top: calc(50% - 27px);
            font-family: 'Poppins', sans-serif;
            font-weight: 500;
            font-size: 36px;
            line-height: 150%;
            letter-spacing: -0.011em;
            color: #000000;
            text-align: center;
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
            left: calc(50% - 28.5px);
            top: calc(50% - 14.5px);
            font-family: 'Inter', sans-serif;
            font-weight: 400;
            font-size: 24px;
            line-height: 29px;
            color: #000000;
            text-align: center;
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
            <div class="title">Orange Pie</div>
            <div class="description">Pizza ipsum dolor meat lovers buffalo. Tomatoes chicken mouth string hand NY.
                Onions lovers
                pepperoni peppers mouth mushrooms. White Aussie burnt peppers NY and red wing chicken pepperoni. Thin
                mayo party
                crust dolor pizza chicken lovers burnt. Bell mayo lot pizza green chicken sauce. Thin olives Hawaiian
                ham pan
                anchovies thin rib mozzarella. Lasagna stuffed Hawaiian mayo black. Personal stuffed cheese banana
                sausage ham
                sautéed.</div>
            <div class="photo-container">
                <div class="photo">Photo</div>
            </div>
            <div class="dateValid">Date of validity</div>
            <div class="button buttonDate">08.07.2024</div>
            <div class="category">Category</div>
            <div class="button buttonCategory">Vegan</div>
            <div class="location">Location</div>
            <div class="button buttonLocation">Saksaganskoho 32</div>
            <div class="availability">Availability time</div>
            <div class="button buttonAvaliableTime">18:00-21:00</div>
            <div class="status">Status</div>
            <div class="button buttonStatus">Availabe</div>
            <div class="price">Price</div>
            <div class="button buttonPrice">4.99$</div>
            <div class="button button-save">Save</div>
            <div class="button button-cancel">Cancel</div>
        </div>
    </div>
</body>

</html>