<#import "templates/common.ftl" as common>
<@common.pageTemplate "Войти в аккаунт">

    <section class="login">
        <h1 class="login__title">Войти в аккаунт</h1>
        <form class="login__form" method="post" action="/login">

            <i class="fa-solid fa-user"></i>
            <input class="form__input" type="text" name="username" id="username" placeholder=" Введите логин" required><br>


            <i class="fa-solid fa-lock"></i>
            <input class="form__input" type="password" name="login" id="login" placeholder="Введите пароль" required><br>

            <button class="btn login__btn" type="submit" >Войти</button>

        </form>
        <p class="login_text">Еще нет аккаунта? <a class="login__link" href="/registration">Зарегистрируйтесь</a></p>
    </section>
</@common.pageTemplate>