<#import "templates/common.ftl" as common>
<@common.pageTemplate "Регистрация">
    <div>
        <form class="service-form" id="serviceform" method="post" action="/registration">
            <p>Каталог</p>
            <div>
                <#list catalog as product>
                    <div>
                        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
                    </div>
<#--                <#else>-->
<#--                    <h3>Товаров нет</h3>-->
                </#list>
                <hr>
                <h3>Создать новый товар</h3>
<#--                <form action="/product/create" method="post">-->
<#--                    Название объявления: <input type="text" name="title"/><br><br>-->
<#--                    Описание объявления: <input type="text" name="description"/><br><br>-->
<#--                    Цена: <input type="number" name="price"/><br><br>-->
<#--                    Город: <input type="text" name="city"/><br><br>-->
<#--                    Имя: <input type="text" name="author"/><br><br>-->
<#--                    <input type="submit" value="Добавить товар"/>-->
<#--                </form>-->
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