<#import "templates/common.ftl" as common>
<@common.pageTemplate "Регистрация">
    <h2>Регистрация</h2>
    <form class="service-form" id="serviceform" method="post" action="/registration">
        <fieldset class="service-form__fieldset">
            <label for="username">Логин</label>
            <input class="service-form__input" name="username" type="text" placeholder="Введите логин" required>
            <label for="password">Пароль</label>
            <input class="service-form__input"  name="password" type="password" placeholder="Введите пароль" required>
            <label for="passwordConfirm">Повторите пароль</label>
            <input class="service-form__input"  name="passwordConfirm" type="password" placeholder="Повторите пароль" required>
            <p>${passwordError!""}</p>
        </fieldset>
        <div class="service-form__buttons">
            <button type="submit">Отправить</button>

        </div>
    </form>
</@common.pageTemplate>