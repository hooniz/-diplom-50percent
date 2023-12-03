<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Личный кабинет</title>
    <link rel="stylesheet" href="./css/second.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.6.3/jquery-ui-timepicker-addon.min.css">
</head>
<body>
    <?php
        include './js+php/h_services.php';
        include './js+php/about.php';
        include './js+php/history.php';
    ?>    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" ></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-timepicker-addon/1.6.3/jquery-ui-timepicker-addon.min.js" ></script>
    <script>
    $.datepicker.regional['ru'] = {
	closeText: 'Закрытьь',
	prevText: 'Предыдущий',
	nextText: 'Следующий',
	currentText: 'Сегодня',
	monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь','Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
	monthNamesShort: ['Янв','Фев','Мар','Апр','Май','Июн','Июл','Авг','Сен','Окт','Ноя','Дек'],
	dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
	dayNamesShort: ['вск','пнд','втр','срд','чтв','птн','сбт'],
	dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
	weekHeader: 'Не',
	dateFormat: 'yy.mm.dd',
	firstDay: 1,
	isRTL: false,
	showMonthAfterYear: false,
	yearSuffix: ''
};
$.datepicker.setDefaults($.datepicker.regional['ru']);
</script>
<script>
$.timepicker.regional['ru'] = {
    timeOnlyTitle: 'Выберите время',
    timeText: 'Время',
	hourText: 'Часы',
	minuteText: 'Минуты',
	secondText: 'Секунды',
	millisecText: 'Миллисекунды',
	timezoneText: 'Часовой пояс',
	currentText: 'Сейчас',
	closeText: 'Закрыть',
	timeFormat: 'HH:00',
	amNames: ['AM', 'A'],
	pmNames: ['PM', 'P'],
	isRTL: false
};
$.timepicker.setDefaults($.timepicker.regional['ru']);</script>
</script>
    <script src="./js+php/anim_history.js" ></script>
    <script src="./js+php/anim_prof.js" defer></script>
    <script src="./js+php/anim_reg.js" defer></script>
    <!-- <script src="./js+php/anim_rec.js" defer></script> -->
    <script src="./js+php/animationpopup.js" defer></script>
    <script src="./js+php/application.js" defer></script>
    <section class= "popup_container" >
        <div class= "popup" >
                <form  class="form" onsubmit="return false;" >
                    <div class=" form_signup">
                        <h2 >Запись</h2>   
                        <script>
                            function setCapitalLetter(str, elem) {
    if(str == "") return false; 
    str = str[0].toUpperCase() + str.substring(1,str.length);
    elem.value = str;
}
                        </script>
                        <a href = "#!"class= "close_button signup" ></a >
                        <input type = "text" name= "surname" placeholder= "Фамилия" required onkeyup="setCapitalLetter(this.value, this)" value="<?php echo $sur;?>" >
                        <input type = "text" name= "nname" placeholder= "Имя" required onkeyup="setCapitalLetter(this.value, this)" value="<?php echo $name; ?>">
                        <input type = "text" name= "patronymic" placeholder= "Отчество" required onkeyup="setCapitalLetter(this.value, this)" value="<?php echo $patron;?>" >
                        <input type="tel"  name="tel" placeholder= "Телефон в формате +7xxxxxxxxx" value="<?php echo $phone;?>">
                        <input type="text" id="datepicker" name="date" placeholder="Выберите дату">
                      <script> $(function(){
                        $("#datepicker").datepicker({
                            minDate:0+1,
                            beforeShowDay: function(date){
                                var dayOfWeek = date.getDay();
                                if (dayOfWeek == 0 || dayOfWeek == 6){
                                    return [false];
                                } else {
                                    return [true];
                                }
                            }
                        });
                        });
                        </script>
                        <input type ="text" id="timepicker" name="time" placeholder="Выберите время">
                        <script>
                        $("#timepicker").timepicker({
                            step: 30,
                            minTime: '9:00',
                            maxTime: '20:00',
                            startTime: '9:00', 
                        });
                        </script>
                        <div class="comment">
                            <textarea type= "text" name= "comment" placeholder= "Комментарий"></textarea>
                        </div>
                        <input type="button" value="Записаться" class= "btn_popup send_button" />
                  </div>
                </form>
        </div>
        
</section>
    <header class="header">
        <div class="container">
        <div class="header_top">
                <div class="nav">
                    <a href="" class="nav_logo"><img src="./icons/logo.png" alt="logo"></a>
                    <ul class="nav_list">
                        <li> <a href="#contacts" class ="link">Контакты </a></li>
                        <li> <a href="#about" class ="link">О нас </a></li>
                        <a href=""> <img src="./icons/home.png" class="home_logo" alt="home"></a>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    
    <section class="information">
    <div class="main">
        <div class="main_nav">
            <div class="main_info">Личный кабинет</div>
            <div class="profile">Профиль</div>
            <div class="history">История</div>
            <div class="records">Записаться</div>
            
            <!-- <div class="recomms">Рекомендации</div> -->
        </div>
        <form class="info" > 
        <div class="main_app_info">Личные данные</div>
            <div class="main_app private_info">
                <div class="surname">Фамилия
                    <input type = "text" readonly name= "surname"  value="<?php echo $sur;?>" ></div>
                <div class="name">Имя
                    <input type = "text" readonly name= "name"  value="<?php echo $name; ?>" ></div>
                <div class="patronymic">Отчество
                    <input type = "text" readonly name= "patronymic"  value="<?php echo $patron;?>" ></div>
            </div>
            <div class="main_app_info2">Контактные данные</div>
            <div class="main_app2 private_info">
            <div class="telephone">Номер телефона
                    <input type = "text" readonly name= "telephone"  value="<?php echo $phone;?>" ></div>
                <div class="telephone">E-mail
                    <input type = "text" readonly name= "email"  value="<?php echo $email;?>" ></div>
            </div>
            <div class="main_app3 history_info">
            <table>
                <thead>
                    <tr>
                         <th>Дата создания</th>
                         <th>Статус</th>
                         <th>Дата завершения</th>
                         <th>Мастер</th>
                         <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($result as $row): ?>
                            <tr>
                                <td><?php echo $row['DateVisit']; ?>
                                <td><?php echo $row['Done']; ?></td>
                                <td><?php echo $row['DateReady']; ?></td>
                                <td><?php 
                                echo $row['SurName'];
                                echo " ";
                                echo $row['Name'];
                                echo " ";
                                echo $row['Patronymic'];?>
                                </td>
                                <td> <a href="?id=<?php echo $id?>&show_id=<?php echo $row['ID']; ?>" class="btn">Подробнее</a></td>
                            </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table> 
            </div>
        <p class="n">Подробнее</p>
        <div class="main_about_history">
            <table>
                <thead>
                    <tr>
                         <th>Именование работы</th>
                         <th>Стоимость работы</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($query as $res): ?>
                            <tr>
                                <td><?php echo $res['idS']; ?></td>
                                <td><?php echo $res['idC']; ?> руб.</td>
                            </tr>
                            <?php endforeach; ?>
                            <tr>
                                <td><p class="empty"></p></td>
                                <td><p class="empty"></p></td>
                            </tr>
                            <tr>
                                <td><p class="full_price">Полная стоимость</p></td>
                                <td><p class="full_price"><?php echo $full ?> руб.</p></td>
                            </tr>
                        </tbody>
            </table>
        </div>
        <div class="records_info">
            <button type="button" class= "btn_c open_popup" >Записаться</button > 
            </div>
            <div class="recomms_info"></div>
    </form>
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