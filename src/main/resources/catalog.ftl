<#import "templates/common.ftl" as common>
<@common.pageTemplate "Каталог">
    <div>
        <p>Каталог</p>
        <div class="catalog-page">
            <div class="filters-block">

            </div>
            <div class="catalog-block">
                <#list catalog as product>
<#--                -->
                        <div class="block-product" >
                            <div class="block-image">
                                <img class="block-product-image" src=${product.image} alt="">
                            </div>
                            <div class="block-product-title">
                                <a  class="slider__img-container__item-active" href="catalog/product/${product.id}">
                                    ${product.title}
                                </a>
                            </div>
                            <div class="product-title">
                                ${product.price} руб.
                            </div>
                        </div>
<#--                </a>-->
                <#else>
                    <h3>Товаров нет</h3>
                </#list>
            </div>


        </div>

    </div>
</@common.pageTemplate>