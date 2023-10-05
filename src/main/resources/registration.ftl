<#import "templates/common.ftl" as common>
<@common.pageTemplate "Регистрация">
<div>
    <form class="service-form" id="serviceform" method="post" action="/registration">
        <p>Регистрация</p>
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
    <#--<form:form method="POST" modelAttribute="userForm">

        <div>
            <form:input type="text" path="username" placeholder="Username"
                        autofocus="true"></form:input>
            <form:errors path="username"></form:errors>
                ${usernameError}
        </div>
        <div>
            <form:input type="password" path="password" placeholder="Password"></form:input>
        </div>
        <div>
            <form:input type="password" path="passwordConfirm"
                        placeholder="Confirm your password"></form:input>
            <form:errors path="password"></form:errors>
                ${passwordError}
        </div>
        <button type="submit">Зарегистрироваться</button>
    </form:form>-->
</div>
</@common.pageTemplate>