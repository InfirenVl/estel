<#import "templates/common.ftl" as common>
<@common.pageTemplate "Каталог">
    <div class="catalog-web">
        <div class="title-catalog">
            Каталог
        </div>
        <div class="search">
            <form class="search-form" action="/catalog" method="get">
                    <input class="search-pole" type="text" name="title">
                <input class="search-button" type="submit" value="Поиск"/>
            </form>
        </div>
        <div class="catalog-page">
            <div class="filters-block">
                <form class="filter-form" action="/catalog" method="get" >
                    <label class="label-filter" for="category" name="category">Категория</label>
                    <select class="filter-category" name="category" id="category">
                        <option value="Кухни" name="category">Кухни</option>
                        <option value="sleeping" name="category">Спальня</option>
                        <option value="Гостиная" name="category">Гостиная</option>
                    </select>
                    <input class="filter-button" type="submit" value="поиск"/>
                </form>

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