<#import "templates/common.ftl" as common>
<@common.pageTemplate "Каталог">
    <div>
            <p>Каталог</p>
            <div>
                <#list catalog as product>
                    <div>
                        <p><b>${product.title}</b> ${product.price} руб. | <a id="content1" class="slider__img-container__item-active" href="catalog/product/${product.id}">Подробнее...</a></p>
                        <hr>
                        <br>

                    </div>
                <#else>
                    <h3>Товаров нет</h3>
                </#list>
                <hr>
                <h3>TODO:Filters</h3>

            </div>

    </div>
</@common.pageTemplate>