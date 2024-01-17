<#import "templates/common.ftl" as common>
<@common.pageTemplate "Регистрация">
    <section class="login">
        <h1 class="login__title">Зарегистрироваться на форуме</h1>
        <form class="login__form" method="post" action="/registration">
            <i class="fa-solid fa-user"></i>
            <input class="form__input" type="text" name="username" id="login" placeholder=" Введите логин" required><br>

            <i class="fa-solid fa-lock"></i>
            <input class="form__input" type="password" name="password" id="login" placeholder="Введите пароль" required><br>

            <i class="fa-solid fa-unlock"></i>
            <input class="form__input" type="password" name="passwordConfirm" id="login" placeholder="Повторите пароль" required><br>

            <button class="btn login__btn" type="submit" >Зарегистрироваться</button>
        </form>
        <p>${passwordError!""}${usernameError!""}${sizeError!""}</p>
        <p class="login_text">Уже есть аккаунт? <a class="login__link" href="/login">Войдите</a></p>
    </section>
</@common.pageTemplate>