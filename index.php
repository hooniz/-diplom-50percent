<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AUTOGARAGE - автосервис</title>
    <link rel="stylesheet" href="./css/main.css">
</head>
<body>   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" defer></script>
    <script src="./js+php/script.js" defer></script>
    <script src="./js+php/animationpopup.js" defer></script>
    <script src="./js+php/reg.js" defer ></script>
    </script>
    <section class= "popup_container" >
        <div class= "popup" >
            <div class="form_box">
                <form  class="form" >
                    <div class="block_item form_signin ">
                        <h2 >Авторизация</h2>
                        <a href = "#!"class= "close_button signin" ></a >
                        <input type = "login" name= "login" placeholder= "Логин"  >
                        <input type= "password" name= "pass" placeholder= "Пароль"  >
                        <input type="button" class= "btn_popup send_button" value="Войти"  />
                        <!--<a href = "#!"class= "form_forgot" >Восстановить пароль</a>-->
                    </div>
                    <div class="block_item form_signup">
                        <h2 >Регистрация</h2>   
                        <a href = "#!"class= "close_button signup" ></a >
                        <input type = "login" name= "loginreg" placeholder= "Логин"  >
                        <input type= "email" name= "emailreg" placeholder= "E-mail"  >
                        <input type= "password" name= "passreg" placeholder= "Пароль"  >
                        <input type= "password" name= "passcheck" placeholder= "Подтвердите пароль" >
                        <input type="button" class= "btn_popup reg_button" value="Зарегистрироваться"/>
                    </div>
                </form>
            </div>
            <div class="block">
                <section class="block__item block-item">
                    <h2 class="block-item__title">У вас уже есть аккаунт?</h2>
                    <button class="block-itm__btn signin-btn">Войти</button>
                </section>
                <section class="block__item block-item">
                    <h2 class="block-item__title">У вас нет аккаунта?</h2>
                    <button class="block-itm__btn signup-btn">Зарегистрироваться</button>
                </section>
            </div>
            
        </div>
    </section>
    <header class="header"  >
        <div class="container">
            <div class="header_top">
                <div class="nav">
                    <a href="#!" class="nav_logo">
                        <img src="./icons/logo.png" alt="logo">
                    </a>
                    <ul class="nav_list">
                        <li> <a href="#services" class ="link">Услуги </a></li>
                        <li> <a href="#contacts" class ="link">Контакты </a></li>
                        <li> <a href="#about" class ="link">О нас </a></li>
                        <li>  <button class= "btn open_popup" >Записаться</button > </li>
                    </ul>
                </div>
            </div>
            <div class="header_content">
                <h1 class="header_title">Техцентр нового уровня!</h1>
                <div class="header_text">
                    <p>Быстрый старт для вашей жизни! </p>
                </div>
                <div class="header_btn">
                    <a href="#!" class = "btn btn--big btn--dark open_popup">Записаться
                    </a>
                </div>
            </div>
        </div>
    </header> 
    <section class="case">
            <div class="figure">
                <a name="services"></a>
                <img src="./icons/graphic.png" alt="1">
            </div>
            <div class="container">
                <div class="case_title">
                    <h2 class="title"> НАШИ УСЛУГИ</h2>
            </div>
                <div class="case_content">
                    <p>Основные услуги предоставляемые техцентром</p>
                </div>
            </div>
            <div class="main_content">
                <div class="main_container">
                <div class="row">
                    <main class="main">
                        <div class="card_content">
                            <div class="card">
                                <h4 class="card_name_1">ДВИГАТЕЛЬ</h4>
                            </div>
                            <div class="card_title">
                                <div class="card_text">Ремонт двигателя и замена комплектующих. Обслуживание навесного оборудования.</div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
            <div class="main_container">
                <div class="row">
                    <main class="main">
                        <div class="card_content">
                            <div class="card">
                                <h4 class="card_name_2">ЭЛЕКТРИКА</h4>
                            </div>
                            <div class="card_title">
                                <div class="card_text">Диагностика и выявление проблем  электропроводки и ЭБУ. Установка дополнительного оборудования.</div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
            <div class="main_container">
                <div class="row">
                    <main class="main">
                        <div class="card_content">
                            <div class="card">
                                <h4 class="card_name_3">ТРАНСМИССИЯ</h4>
                            </div>
                            <div class="card_title">
                                <div class="card_text">Выявление проблем, ремонт и замена любых коробок передач и систем полного привода, редукторов.</div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
            <div class="main_container">
                <div class="row">
                    <main class="main">
                        <div class="card_content">
                            <div class="card">
                                <h4 class="card_name_4">ТОРМОЗА</h4>
                            </div>
                            <div class="card_title">
                                <div class="card_text"> Ремонт и обслуживание тормозной системы. Усовершенствование тормозного потенциала.</div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
            <div class="main_container">
                <div class="row">
                    <main class="main">
                        <div class="card_content">
                            <div class="card">
                                <h4 class="card_name_5">ПОДВЕСКА</h4>
                            </div>
                            <div class="card_title">
                                <div class="card_text">Ремонт, настройка и обслуживание всей подвески. Регулировка развал-схождения.</div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
            <div class="main_container">
                <div class="row">
                    <main class="main">
                        <div class="card_content">
                            <div class="card">
                                <h4 class="card_name_6">ВЫХЛОП</h4>
                            </div>
                            <div class="card_title">
                                <div class="card_text">Замена выхлопной системы, глушителя. Перепайка и установка каждого элемента. </div>
                            </div>
                        </div>
                    </main>
                </div>
            </div>
        </div>
        </section>
        <section class="stages">
            <div class="sections">
                <div class="case_title">
                    <h2 class="title">КАК МЫ РАБОТАЕМ?</h2>
                </div>
                <div class="number">
                    <span class="name">Сообщение о проблеме</span>
                    <img class="img_stages" src="./icons/1.png" alt="8">
                </div>
                <div class="section_text">
                    <h1 class="section_title">Ремонт и замена выхлопной системы, глушителя. Перепайка отдельного элемента в глушителе. </h1>
                </div>
                <div class="number">
                    <span class="name">Расчет стоимости ремонта</span>
                    <img class="img_stages" src="./icons/2.png" alt="9">
                </div>
                <div class="section_text">
                    <h1 class="section_title">Наши сотрудники подсчитают предварительную* стоимость работ. </h1>
                </div>
                <div class="number">
                    <span class="name">Начало ремонтных работ</span>
                    <img class="img_stages" src="./icons/3.png" alt="">
                </div>
                <div class="section_text">
                    <h1 class="section_title">Мы Договариваемся о цене, сроках и вы привозите авто на ремонт.</h1>
                </div>
                <div class="section_text">
                    <h1 class = "notification"> <strong>*</strong>Стоимость работ по автомобилю может увеличиться после осмотра механиком.</h1>
                </div>
                <div class="figure">
                    <img src="./icons/graphic.png" alt="" class="rectangle">
                </div>
                
            </div>
        </section>
        <footer class = "footer">
            <div class="container">
                <div class="footer_row">
                <div class="footer_copyright">Copyright © 2023 Autogarage</div>
                <div class="footer_nav">
                    <div class="footer_about">
                        <div class="about_contacts">
                            <a name="contacts"></a>
                            <p class="footer_a">КОНТАКТЫ</p>
                            <p class="footer_p">Казань; Баумана 12</p>
                            <p class="footer_p">Тел: +7 (919) 649-56-78</p>
                            <p class="footer_p">WhatsApp: +7 (919) 649-56-78</p>
                            <p class="footer_p">9:00-21:00 ежедневно</p>
                        </div>
                    </div>
                    <div class="footer_about">
                        <div class="about_company">
                            <a name="about"></a>
                            <p class="footer_a">О НАС</p>
                            <p class="footer_p">Компания была основана в 2020 году. Цель нашей команды, — </p>
                            <p class="footer_p">сделать быстрый, качественный ремонт автомобилей. Для этого мы</p>
                            <p class="footer_p">закупаем самое лучшее оборудование, учимся и развиваемся. </p>
                            <p class="footer_p">Оптимизируем рабочие процессы и все это показываем Вам.</p>
                       </div>
                    </div>
                </div>
            </div>
        </div>
        </footer>
</body>
</html> 