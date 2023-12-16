<#import "templates/common.ftl" as common>
<@common.pageTemplate title="${product.title}">
    <main>
        <div class="product-page">

            <div class="product-plate">
                <div class="product-image">
                    <img class="image-product" src="${product.image}" alt="${product.title}">
                </div>
                <div class="product-details">
                    <div class="title-prod">
                        ${product.title}
                    </div>
                    <div class="description-option">
                        Коллекция: ${product.collection}
                    </div>
                    <div class="description-option">
                        Цена:${product.price}
                    </div>
                    <div class="description-option">
                        Категория:${product.category}
                    </div>
                    <div class="description-option">
                        Код товара:${product.id}
                    </div>
                    <div class="description-option">
                        Описание: ${product.description}
                    </div>
                    <button class="button-buy">
                        В корзину
                    </button>
                    <button class="button-more">
                        Подробнее
                    </button>
                </div>
            </div>
        </div>
    </main>
</@common.pageTemplate>