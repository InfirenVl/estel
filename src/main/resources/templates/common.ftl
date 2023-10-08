<#macro pageTemplate title>
    <html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/css/style.css">
        <script src="/js/slider.js"></script>
        <script src="https://kit.fontawesome.com/ae938e4076.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="/img/favicon.ico" type="image/x-icon">
        <title>${title}</title>
    </head>
    <body>
    <header>
        <div id="go-up"></div>
        <div class="header__logo">
            <a href="/"><img src="/img/logo.png" alt="logo"></a>
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
    <a class="go-up-button" href="#go-up"><img src="/img/up.svg" alt="Наверх^"></a>
    <nav>
        <div class="menu">
            <a class="nav__button" href="/contacts">Контакты</a>
            <a class="nav__button" href="service.html">Услуги</a>
            <a class="nav__button" href="about-us.html">О компании</a>
            <a class="nav__button" href="/catalog">Каталог</a>
            <#if auth == "ADMIN">
                <a class="nav__button" href="/admin">Панель администратора</a>
            </#if>
        </div>
        <div class="menu">
            <#if auth == "ANONYMOUS">
                <a class="nav__button" href="/login">Войти</a>
                <a class="nav__button" href="/registration">Регистрация</a>
            <#else>
                <a class="nav__button" href="/logout">Выйти</a>
                <a class="nav__button" href="wip.html">Корзина<i class="fa-solid fa-basket-shopping"></i></a>
            </#if>
        </div>
    </nav>
    <main>
        <#nested>
    </main>
    <footer>
        <div class="footer-container">
            <div class="footer-nav">
                <h3>Навигация</h3>
                <div class="footer-nav__container">
                    <ul>
                        <li><a href="/catalog">Каталог</a></li>
                        <li><a href="/catalog">Кухни</a></li>
                        <li><a href="/catalog">Спальни</a></li>
                        <li><a href="/catalog">Прихожие</a></li>
                        <li><a href="/catalog">Гостиные</a></li>
                        <li><a href="/catalog">Скидки</a></li>
                        <li><a href="/catalog">Новинки</a></li>
                    </ul>
                    <ul>
                        <li><a href="/contacts">Контакты</a></li>
                        <li><a href="/about-us">О компании</a></li>
                        <li><a href="/basket">Корзина</a></li>
                        <li><a href="/service">Услуги</a></li>
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
</#macro>
