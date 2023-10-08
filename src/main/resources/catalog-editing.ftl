<#import "templates/common.ftl" as common>
<@common.pageTemplate "Каталог">
    <h3>Создать новый товар</h3>
    <div class="product">
        <form action="/admin/catalog-editing/create" method="post">
            Ссылка на изображение:<input type="text" name="image" required/><br><br>
            Название товара: <input type="text" name="title" required/><br><br>
            Коллекция товара: <input type="text" name="collection" required/><br><br>
            Категория товара: <input type="text" name="category" required/><br><br>
            Цена: <input type="number" name="price" required/><br><br>
            Описание товара: <input type="text" name="description" required/><br><br>
            <input type="submit" value="Добавить товар"/>
        </form>
        <hr>

        <form action="/admin/catalog-editing/delete" method="post">
            Код товара:<input type="number" name="id" required/><br><br>
            <input type="submit" value="Удалить товар"/>
        </form>
        <p>${errorId!""}</p>

    </div>
</@common.pageTemplate>