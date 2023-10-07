<#import "templates/common.ftl" as common>
<@common.pageTemplate "Регистрация">
    <section class="registration">
        <h2>Регистрация</h2>
        <form class="registration-form" method="post" action="/registration">
            <fieldset class="registration-form__fieldset">
                <p>${passwordError!""}${usernameError!""}${sizeError!""}</p>
                <label for="username">Логин</label>
                <input class="registration-form__input" name="username" type="text" placeholder="Введите логин" required>
                <label for="password">Пароль</label>
                <input class="registration-form__input"  name="password" type="password" placeholder="Введите пароль" required>
                <label for="passwordConfirm">Повторите пароль</label>
                <input class="registration-form__input"  name="passwordConfirm" type="password" placeholder="Повторите пароль" required>
                <button type="submit">Зарегистрироваться</button>
            </fieldset>
        </form>
    </section>
</@common.pageTemplate>