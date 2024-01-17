<#macro pageTemplate title>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>${title}</title>
        <link rel="shortcut icon" href="/img/logo.ico" type="image/x-icon">
        <link rel="stylesheet" href="css/style.css">
        <script src="https://kit.fontawesome.com/06d986b207.js" crossorigin="anonymous"></script>
    </head>
    <body>
    <header class="header">
        <div class="header-logo__container">
            <img class="header__logo" src="/img/pc.ico" alt="логотип">
            <p class="header-logo__text">Hard<span>Fix</span></p>
        </div>
        <nav class="nav">
            <ul class="menu">
                <li class="menu__items"><a href="/" class="menu__link">Главная</a></li>

                <#if auth == "USER" || auth == "ADMIN">
                    <li class="menu__items"><a href="/new-post" class="menu__link">Новый пост</a></li>
                </#if>

                <#if auth == "ADMIN">
                    <li class="menu__items"><a href="admin/user-editing" class="menu__link">Пользователи</a></li>
                </#if>

            </ul>
        </nav>
        <div class="header__buttons">
            <#if auth == "ANONYMOUS">
                <a href="/login" class="header__btn"><i class="fa-solid fa-key"></i>Войти</a>
                <a href="/registration" class="header__btn"><i class="fa-solid fa-address-card"></i> Зарегистрироваться</a>
            <#else>
                <a href="/logout" class="header__btn"><i class="fa-solid fa-right-from-bracket"></i>Выйти</a>


            </#if>

        </div>
    </header>

    <main>
        <#nested>
    </main>
    <footer>

    </footer>
    </body>
    </html>
</#macro>
