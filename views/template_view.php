  <!DOCTYPE html>
  <html lang="ru_RU">
  <head>
    <meta charset="UTF-8">
    <title>MyLoveShop</title>
    <link rel="stylesheet" media="screen" href="/views/css/bootstrap.min.css">
    <link rel="stylesheet" href="/views/css/style.css">
  </head>
  <body>
   
   <div class="container-fluid main">
    <div class="row header">
      <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="text-center">
         <a href="/main" class="btn head-logo" role="button"><h1>SHOPPER <span> модная точка</span></h1></a>
       </div>
     </div>
   </div>
   <?php if($page=='main'){ ?>
   <div class="row">
     <div class="col-xs-12 logo">
       <p>Новая коллекция Весна - Лето 2016</p>
     </div>
   </div>
   <?php } ?>
   <div class="row">
     <div class="col-xs-12">

      <nav class="nav navbar-default navbar">
        <ul class="nav navbar-nav">
          <li > <a href="/product?id=all">Каталог товаров</a></li>
          <li ><a href="/">Главная</a></li>
          <li><a href="main?category=1">Статьи</a></li>
          <li><a href="main?category=2">Акции</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="personal_cabinet">Личный кабинет <span class="text-info"><?=$user_name?></span></a></li>

          <?php if(!$user_name){?>
          <li><a href="registration">Зарегистрироваться </a></li>
          <?php } ?>
        </ul>
     
    </div>
  </div>

  <div class="row">
    <div class="col-md-2 col-sm-2 sidebar">
      <?php include "controllers/".$sidebar_controler ?>
    </div>

    <div class="col-md-8">
      <?php include "controllers/".$controler ?>
    </div>
    <div class="col-md-2 col-sm-2 sidebar">
    </div>
  </div>
 </div>

  <div class="row footer">
    <div class="col-xs-12" >

    </div>
  </div>

</body>
</html>