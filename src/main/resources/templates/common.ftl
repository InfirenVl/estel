<#macro pageTemplate title>
    <html lang="ru">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/css/style.css">
        <script src="https://kit.fontawesome.com/ae938e4076.js" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="/img/pc.ico" type="image/x-icon">
        <title>${title}</title>
    </head>
    <body>


    <nav>
        <div class="menu">
            <a class="nav__button" href="/">Главная</a>
<#--            <a class="nav__button" href="service.html">Темы</a>-->
            <#if auth == "USER" || auth == "ADMIN" || auth == "MODERATOR">
                <a class="nav__button" href="/new-post">Новый пост</a>
            </#if>
<#--            <a class="nav__button" href="/catalog">Каталог</a>-->
            <#if auth == "ADMIN">
                <a class="nav__button" href="admin/user-editing">Пользователи</a>
            </#if>
            <#if auth == "ANONYMOUS">
                <a class="nav__button" href="/login">Войти</a>
                <a class="nav__button" href="/registration">Регистрация</a>
            <#else>
                <a class="nav__button" href="/logout">Выйти</a>
                <#if auth == "MODERATOR" || auth == "ADMIN">
                    <a class="nav__button" href="wip.html">Модерация</a>
                </#if>

            </#if>
        </div>
    </nav>
    <main>
        <#nested>
    </main>
    <footer>

    </footer>
    </body>
    </html>
</#macro>
