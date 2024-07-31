<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Лeндінг</title>
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

    .box {
      position: absolute;
      width: 555px;
      height: 555px;
      border-radius: 30px;
    }

    .pinkBox {
      left: 270px;
      top: 245px;
      background: #FF88CF;
    }

    .greenBox {
      left: 40px;
      top: 185px;
      background: #18D6AA;
    }

    .title {
      position: absolute;
      font-family: 'Comfortaa', sans-serif;
      font-style: normal;
      font-weight: 400;
      font-size: 34px;
      line-height: 38px;
      color: #070707;
    }

    .title1 {
      width: 555px;
      height: 80px;
      left: 845px;
      top: 245px;
    }

    .title3 {
      width: 500px;
      height: 80px;
      left: 155px;
      top: 1870px;
    }

    .main-text {
      position: absolute;
      width: 555px;
      height: 90px;
      left: 845px;
      top: 345px;
      font-family: 'Poppins', sans-serif;
      font-style: normal;
      font-weight: 400;
      font-size: 16px;
      line-height: 24px;
      color: #070707;
    }

    .photo {
      box-sizing: border-box;
      position: absolute;
      width: 555px;
      height: 555px;
      border: 8px solid #FFD84B;
      border-radius: 30px;
    }

    .photo1 {
      left: 155px;
      top: 305px;
      background: url('.jpg');
    }

    .photo2 {
      width: 1130px;
      height: 300px;
      left: 155px;
      top: 990px;
      border: 8px solid #FF88CF;

    }

    .slider {
      position: absolute;
      width: 1705px;
      height: 740px;
      left: -75px;
      top: 1970px;
    }

    .box-small {
      box-sizing: border-box;
      position: absolute;
      width: 440px;
      height: 320px;
      border: 8px solid;
      border-radius: 15px;
    }

    .photo3 {
      width: 440px;
      height: 400px;
      left: -75px;
      top: 0px;
      border-color: #FFD84B;
    }

    .photo4 {
      left: -75px;
      top: 420px;
      border-color: #FF88CF;
    }

    .photo5 {
      width: 325px;
      height: 740px;
      left: 385px;
      top: 0px;
      border-color: #A2D6F9;
    }

    .photo6 {
      width: 210px;
      height: 400px;
      left: 730px;
      top: 0px;
      border-color: #FF88CF;
    }

    .photo7 {
      width: 210px;
      height: 400px;
      left: 960px;
      top: 0px;
      border-color: #FFD84B;
    }

    .photo8 {
      left: 730px;
      top: 420px;
      border-color: #18D6AA;
    }

    .photo9 {
      left: 1190px;
      top: 0px;
      border-color: #A2D6F9;
      width: 440px;
      height: 400px;
    }

    .photo10 {
      left: 1190px;
      top: 420px;
      border-color: #FF88CF;
    }

    .contact-us {
      position: absolute;
      width: 230px;
      height: 90px;
      left: 299px;
      top: 2810px;
    }

    .contact-us-title {
      width: 205.53px;
      height: 22px;
      font-family: 'Comfortaa', sans-serif;
      font-style: normal;
      font-weight: 600;
      font-size: 20px;
      line-height: 22px;
      color: #070707;
      margin-bottom: 20px;
    }

    .contact-us-text {
      width: 196.72px;
      height: 24px;
      font-family: 'Poppins', sans-serif;
      font-style: normal;
      font-weight: 400;
      font-size: 16px;
      line-height: 24px;
      color: #070707;
      display: flex;
    }

    .contact-us-icon {
      width: 23.49px;
      height: 24px;
      padding-right: 10px;
    }


    .information {
      position: absolute;
      width: 210px;
      height: 90px;
      left: 40px;
      top: 2810px;
    }

    .information-title {
      font-family: 'Comfortaa', sans-serif;
      font-style: normal;
      font-weight: 600;
      font-size: 20px;
      line-height: 22px;
      color: #070707;

      margin-bottom: 20px;
    }

    .information-text {
      font-family: 'Poppins', sans-serif;
      font-style: normal;
      font-weight: 400;
      font-size: 16px;
      line-height: 24px;
      color: #070707;
    }

    .blueBox {
      box-sizing: border-box;
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      padding: 30px;
      gap: 20px;
      position: absolute;
      width: 440px;
      height: 440px;
      left: 155px;
      top: 1352px;
      background: #A2D6F9;
      border-radius: 30px;
    }

    .blueBox-title {
      font-family: 'Comfortaa', sans-serif;
      font-style: normal;
      font-weight: 400;
      font-size: 34px;
      line-height: 38px;
      color: #070707;
    }

    .blueBox-text {
      font-family: 'Poppins', sans-serif;
      font-style: normal;
      font-weight: 400;
      font-size: 16px;
      line-height: 24px;
      color: #070707;
    }

    .button {
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
      padding: 10px 25px;
      border-radius: 10px;
      font-family: 'Comfortaa', sans-serif;
      font-style: normal;
      font-weight: 600;
      font-size: 24px;
      line-height: 36px;
      letter-spacing: -0.011em;
      color: #070707;
    }

    .button1 {
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
      padding: 10px 25px;
      gap: 10px;

      position: absolute;
      width: 326px;
      height: 56px;
      left: 962px;
      top: 535px;
      cursor: pointer;

      background: #FF88CF;
      border-radius: 10px;
      border: none;

      width: 276px;
      height: 36px;

      font-family: 'Comfortaa';
      font-style: normal;
      font-weight: 600;
      font-size: 24px;
      line-height: 150%;

      letter-spacing: -0.011em;

      color: #070707;


      flex: none;
      order: 0;
      flex-grow: 0;

    }

    .button2 {
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
      padding: 10px 25px;
      gap: 10px;

      position: absolute;
      width: 276px;
      height: 36px;
      left: 660px;
      top: 2827px;

      background: #FF88CF;
      border-radius: 10px;
      cursor: pointer;

    }

    .gluten-free {
      box-sizing: border-box;

      display: flex;
      flex-direction: row;
      align-items: center;
      padding: 12px 80px;
      gap: 102px;

      position: absolute;
      width: 555px;
      height: 120px;
      left: 730px;
      top: 1350px;

      border: 10px solid #FFD84B;
      border-radius: 20px;

    }

    .gluten-free-text {
      width: 198px;
      height: 38px;

      font-family: 'Comfortaa';
      font-style: normal;
      font-weight: 400;
      font-size: 34px;
      line-height: 38px;


      color: #070707;

      flex: none;
      order: 0;
      flex-grow: 0;
    }

    .gluten-free-icon {
      width: 95px;
      height: 95px;

      flex: none;
      order: 1;
      flex-grow: 0;

    }

    .vegeterian {
      box-sizing: border-box;

      display: flex;
      flex-direction: row;
      align-items: center;
      padding: 12px 80px;
      gap: 109px;

      position: absolute;
      width: 555px;
      height: 120px;
      left: 730px;
      top: 1510px;

      border: 10px solid #FF88CF;
      border-radius: 20px;

    }

    .vegeterian-text {
      width: 191px;
      height: 38px;

      font-family: 'Comfortaa';
      font-style: normal;
      font-weight: 400;
      font-size: 34px;
      line-height: 38px;

      color: #070707;

      flex: none;
      order: 0;
      flex-grow: 0;

    }

    .vegeterian-icon {
      width: 95px;
      height: 95px;

      flex: none;
      order: 1;
      flex-grow: 0;
    }

    .vegan {
      box-sizing: border-box;

      display: flex;
      flex-direction: row;
      align-items: center;
      padding: 12px 80px;
      gap: 190px;

      position: absolute;
      width: 555px;
      height: 120px;
      left: 730px;
      top: 1670px;

      border: 10px solid #18D6AA;
      border-radius: 20px;
    }

    .vegan-text {
      width: 110px;
      height: 38px;

      font-family: 'Comfortaa';
      font-style: normal;
      font-weight: 400;
      font-size: 34px;
      line-height: 38px;

      color: #070707;
      flex: none;
      order: 0;
      flex-grow: 0;
    }

    .vegan-icon {
      width: 95px;
      height: 95px;

      flex: none;
      order: 1;
      flex-grow: 0;
    }

    .logo {
      position: absolute;
      width: 57px;
      height: 29px;
      left: 69px;
      top: 63px;
    }

    header {
      position: absolute;
      width: 1440px;
      height: 125px;
      left: 0px;
      top: 0px;

    }


    .text {
      width: 276px;
      height: 36px;

      font-family: 'Comfortaa';
      font-style: normal;
      font-weight: 600;
      font-size: 24px;
      line-height: 150%;
      letter-spacing: -0.011em;

      color: #070707;

      flex: none;
      order: 0;
      flex-grow: 0;
    }

    .sign-up {
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
      padding: 10px 25px;
      gap: 10px;

      position: absolute;
      width: 326px;
      height: 56px;
      left: 730px;
      top: 49px;

      cursor: pointer;
      background: #FF88CF;
      border-radius: 10px;
      border: none;
    }

    .download-app {
      display: flex;
      flex-direction: row;
      justify-content: center;
      align-items: center;
      padding: 10px 50px;
      gap: 10px;

      position: absolute;
      width: 326px;
      height: 56px;
      left: 1075px;
      top: 49px;

      cursor: pointer;
      background: #A2D6F9;
      border-radius: 10px;
      border: none;

    }

    .title2 {
      position: absolute;
      height: 30px;
      left: 175px;
      top: 940px;

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
      height: 3072px;
    }
  </style>
</head>

<body>
  <div class="center-container">
    <div class="content">
      <header class="colorPage">
        <div class="logo">
          <img src="static/images/logo.png" alt="Logo">
        </div>
        <div class="actions">
          <button class="sign-up text" onclick="openRegisterPage()">Sign Up your business</button>
          <button class="download-app text">Download the App</button>
        </div>
      </header>
      <div class="box pinkBox"></div>
      <div class="box greenBox"></div>
      <img src="static/images/photo1.jpg" class="photo photo1">
      <div class="title title1">About our company and small business</div>
      <div class="main-text">Our company promotes an ecological system for selling products that are about to expire and
        sells goods and products at a deep discount, we also provide services for small businesses and allow us to make
        good advertising for our products.</div>
      <div class="button button1" onclick="openRegisterPage()">Sign Up your business</div>
      <div class="title title2">Care and comfort for our clients</div>
      <img src="static/images/photo2.jpg" class="photo photo2">
      <div class="blueBox">
        <div class="blueBox-title">We provide a variety of diet options.</div>
        <div class="blueBox-text">Our company is famous for the fact that small businesses that cooperate with us can
          offer our clients the most varied choice in terms of food, this can be either vegetarian or gluten-free food,
          we want to show that we can offer our clients any food that they like.</div>
      </div>
      <div class="gluten-free ">
        <h3 class="gluten-free-text">Gluten-free</h3>
        <img src="static/images/icon1.png" alt="Icon" class="gluten-free-icon">
      </div>
      <div class="vegeterian">
        <h3 class="vegeterian-text">Vegeterian</h3>
        <img src="static/images/icon2.png" alt="Icon" class="vegeterian-icon">
      </div>
      <div class="vegan">
        <h3 class="vegan-text">Vegean</h3>
        <img src="static/images/icon3.png" alt="Icon" class="vegan-icon">
      </div>
      <div class="title title3">We provide cheap prices
        and comfort for our clients</div>
      <div class="slider">
        <img src="static/images/photo3.jpg" class="box-small photo3">
        <img src="static/images/photo4.jpg" class="box-small photo4">
        <img src="static/images/photo5.jpg" class="box-small photo5">
        <img src="static/images/photo6.jpg" class="box-small photo6">
        <img src="static/images/photo7.jpg" class="box-small photo7">
        <img src="static/images/photo8.jpg" class="box-small photo8">
        <img src="static/images/photo9.jpg" class="box-small photo9">
        <img src="static/images/photo10.jpg" class="box-small photo10">
      </div>
      <div class="information">
        <div class="information-title">Information</div>
        <div class="information-text">About Us</div>
        <div class="information-text">Privacy Policy</div>
      </div>
      <div class="contact-us">
        <div class="contact-us-title">Contact Us</div>
        <div class="contact-us-text">
          <img src="static/images/call.png" class="contact-us-icon">
          <div>+38 8888 888 888</div>
        </div>
        <div class="contact-us-text">
          <img src="static/images/mail.png" class="contact-us-icon">
          <div>youremail@gmail.com</div>
        </div>
      </div>
      <div class="button button2" onclick="openRegisterPage()">Sign Up your business</div>
    </div>
  </div>
  <script>
    function openRegisterPage() {
      window.location.href = 'registration.jsp';
    }
  </script>
</body>

</html>