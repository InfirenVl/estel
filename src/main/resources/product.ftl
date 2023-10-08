<#import "templates/common.ftl" as common>
    <@common.pageTemplate title="${product.title}">
        <main>
            <div class="product">
                <h1>${product.title}</h1>

                <div class="product-image">
                    <img src="${product.image}" alt="${product.title}">
                </div>
                <div class="product-details">
                    <p>Коллекция: ${product.collection}</p>
                    <br>
                    <p>${product.description}</p>
                    <br>
                    <p>Цена:${product.price}</p>
                    <br>
                    <p>Категория:${product.category}</p>
                    <br>
                    <p>Код товара:${product.id}</p>

                </div>
            </div>
        </main>
</@common.pageTemplate>