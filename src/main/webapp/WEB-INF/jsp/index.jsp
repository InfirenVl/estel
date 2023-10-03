<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${contextPath}/resources/css/style.min.css">
    <script src="js/slider.js"></script>
    <script src="https://kit.fontawesome.com/ae938e4076.js" crossorigin="anonymous"></script>
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <title>Главная страница Эстель</title>
</head>
<body>
    <header>
        <div id="go-up"></div>
        <div class="header__logo">
            <a href="/"><img src="${contextPath}/resources/img/logo.png" alt="logo"></a>
        </div>
        <form class="header__search" action="search" method="get">
            <input type="search" name="text" placeholder="Например, спальный гарнитур" id="search">
            <button type="submit">Поиск</button>
        </form>
        <div class="header__contacts">
            <p>
                +7 800 300-46-68
            </p>
            <p>
                г.Екатеринбург, Верх-Исетский бульвар,13,<br>корпус B, офис 314A
            </p>
        </div>
    </header>           
    <a class="go-up-button" href="#go-up"><img src="img/up.svg" alt="Наверх^"></a>
    <main>
    <nav>
        <div class="menu">
            <a class="nav__button" href="contacts.html">Контакты</a>
            <a class="nav__button" href="service.html">Услуги</a>
            <a class="nav__button" href="about-us.html">О компании</a>
            <a class="nav__button" href="catalog.html">Каталог</a>
            <sec:authorize access="!isAuthenticated()">
                <a class="nav__button" href="/registration">Регистрация</a>
                <a class="nav__button" href="/login">Войти</a>
            </sec:authorize>
            <sec:authorize access="isAuthenticated()">
                <a class="nav__button" href="/logout">Выйти</a>
            </sec:authorize>
        </div>
        <a class="nav__button" href="wip.html">Корзина<i class="fa-solid fa-basket-shopping"></i></a>
    </nav>
        <section class="banner">
            <h1>Сделай интерьер своей мечты вместе с Эстель!</h1>
            <img class="banner__img" src="${contextPath}/resources/img/banner.svg" alt="banner">
        </section>

        <section class="catalog">
            <ul class="catalog__menu">
                <li><a class="catalog__menu__item" href="catalog.html">Кухни</a>
                    <ul class="catalog__submenu">
                        <li><a class="catalog__submenu__item" href="catalog.html">Современные кухни</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Классические кухни</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Готовые кухни</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Модули Радуга</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Мойки и смесители</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Столешницы</a></li>
                    </ul>
                </li>
                <li><a class="catalog__menu__item" href="catalog.html">Гостиные</a>
                    <ul class="catalog__submenu">
                        <li><a class="catalog__submenu__item" href="catalog.html">Модульные стенки</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Министенки</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Шкафы для гостиной</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Комоды для гостиной</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Полки</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Зеркала</a></li>
                    </ul>
                </li>
                <li><a class="catalog__menu__item" href="catalog.html">Спальни</a>
                    <ul class="catalog__submenu">
                        <li><a class="catalog__submenu__item" href="catalog.html">Кровати с подъемным механизмом</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Двуспальные кровати</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Односпальные кровати</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Прикроватные тумбы</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Шкафы для спальни</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Комоды для спальни</a></li>
                    </ul>
                </li>
                <li><a class="catalog__menu__item" href="catalog.html">Прихожие</a></li>
                <li><a class="catalog__menu__item" href="catalog.html">Новинки</a></li>
                <li><a id="close-catalog" class="catalog__menu__item" href="catalog.html">Скидки</a></li>
            </ul>
            <div class="slider">
                <div class="slider__container">
                    <button id="slider-prev" onclick="prev()"> &lt; </button>
                    <div class="slider__img-container">
                        <a id="content1" class="slider__img-container__item-active" href="catalog.html"><img src="img/slider_img1.png" alt="Гостиная Лайт"></a>
                        <a id="content2" href="catalog.html"><img src="img/slider_img2.png" alt="Гостиная Стокгольм"></a>
                        <a id="content3" href="catalog.html"><img src="img/slider_img3.png" alt="Кухня Прованс"></a>
                        <a id="content4" href="catalog.html"><img src="img/slider_img4.png" alt="Кухня Брауни"></a>
                        <a id="content5" href="catalog.html"><img src="img/slider_img5.png" alt="Кухня Ноэми"></a>
                        <a id="content6" href="catalog.html"><img src="img/slider_img6.png" alt="Спальный гарнитур Асти"></a>
                        <a id="content7" href="catalog.html"><img src="img/slider_img7.png" alt="Спальный гарнитур Стокгольм"></a>
                    </div>
                    <button id="slider-next" onclick="next()"> &gt; </button>
                </div> 
            </div>
        </section>

        <section class="advantages">
            <h2>Наши преимущества</h2>
            <div class="advantages-container">
                <div class="advantages-container__item">
                    <img class="advantages-container__item-img" src="img/guarantee.svg" alt="guarantee">
                    <h3>Гарантия</h3>
                    <p class="advantages-container__item-text">На всю нашу мебель на 2 года</p>
                </div>
                <div class="advantages-container__item">
                    <img class="advantages-container__item-img" src="img/clock.svg" alt="clock">
                    <h3>Скорость</h3>
                    <p class="advantages-container__item-text">Выполним ваш заказ и осуществим доставку в самые короткие сроки</p>
                </div>
                <div class="advantages-container__item">
                    <img class="advantages-container__item-img" src="img/thumbup.svg" alt="thump up">
                    <h3>Качество</h3>
                    <p class="advantages-container__item-text">97% наших клиентов остаются довольны нашей продукцией</p>
                </div>
                <div class="advantages-container__item">
                    <img class="advantages-container__item-img" src="img/check.svg" alt="check">
                    <h3>Надёжность</h3>
                    <p class="advantages-container__item-text">Мы находимся на рынке уже более 25 лет</p>
                </div>
            </div>
        </section>

        <section class="feedback">
            <h2>Отзывы наших покупателей</h2>
            <div class="feedback-container">
                <div class="feedback-container__item">
                    <div class="feedback-container__item-info">
                        <img class="feedback-container__item-info__avatar" src="img/person.svg" alt="avatar">
                        <div class="feedback-container__item-info__text">
                            <p class="feedback-container__item-info__text-name">Олег</p>
                            <p class="feedback-container__item-info__text-date">21 окт 2022 в 4:20</p>
                        </div>
                    </div>
                    <p class="feedback-container__item-text">Устанавливали кухню эстель полгода назад. Качеством довольны, нареканий нет. Тот случай, когда цена/качество идеально удовлетворили запросы.</p>
                </div>
                <div class="feedback-container__item">
                    <div class="feedback-container__item-info">
                        <img class="feedback-container__item-info__avatar" src="img/person.svg" alt="avatar">
                        <div class="feedback-container__item-info__text">
                            <p class="feedback-container__item-info__text-name">Дмитрий</p>
                            <p class="feedback-container__item-info__text-date">17 ноя 2022 в 12:34</p>
                        </div>
                    </div>
                    <p class="feedback-container__item-text">Купила кухню в Эстель, все понравилось, особенно цены и сроки изготовления. Считала свою кухню в других местах, в Эстель за 69 руб. купила, в других компаниях аналогичная модель обошлась бы мне за 130 тыс. руб.</p>
                </div>
                <div class="feedback-container__item">
                    <div class="feedback-container__item-info">
                        <img class="feedback-container__item-info__avatar" src="img/person.svg" alt="avatar">
                        <div class="feedback-container__item-info__text">
                            <p class="feedback-container__item-info__text-name">Ксения</p>
                            <p class="feedback-container__item-info__text-date">6 ноя 2022 в 13:37</p>
                        </div>
                    </div>
                    <p class="feedback-container__item-text">Выбирали с мужем, он у меня очень внимательный к деталям. Понравилась кухня без ручек.  Заказали ее месяц назад. Сделали быстро, всего 7 дней. Всем довольна, особенно работой менеджера.</p>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div class="footer-container">
            <div class="footer-nav">
                <h3>Навигация</h3>
                <div class="footer-nav__container">
                    <ul>
                        <li><a href="catalog.html">Каталог</a></li>
                        <li><a href="catalog.html">Кухни</a></li>
                        <li><a href="catalog.html">Спальни</a></li>
                        <li><a href="catalog.html">Прихожие</a></li>
                        <li><a href="catalog.html">Гостиные</a></li>
                        <li><a href="catalog.html">Скидки</a></li>
                        <li><a href="catalog.html">Новинки</a></li>
                    </ul>
                    <ul>
                        <li><a href="contacts.html">Контакты</a></li>
                        <li><a href="about-us.html">О компании</a></li>
                        <li><a href="basket.html">Корзина</a></li>
                        <li><a href="service.html">Услуги</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-contacts">
                <h3>Контакты</h3>
                <ul>
                    <li><a href="https://vk.com/estelmebel"><i class="fa-brands fa-vk"></i>ВКонтакте</a></li>
                    <li><i class="fa-solid fa-phone"></i>+7 800 300 46 68</li>
                    <li><i class="fa-solid fa-envelope"></i>volodkovich.v.s@gmail.com</li>
                    <li><i class="fa-solid fa-location-dot"></i>МЦ «Эма», Верх-Исетский бульвар, 13, корпус Б, Этаж 3, офис 314А</li>
                </ul>
            </div> 
        </div>
        <p>*Цвет и фактура мебели могут отличаться от цвета и фактуры на фото в связи с различной цветопередачей монитора. <br>*Указанные цены на сайте не являются публичной офертой (ст.435 ГК ФР)</p>
    </footer>
</body>
</html>