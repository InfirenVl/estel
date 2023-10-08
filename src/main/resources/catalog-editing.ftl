<#import "templates/common.ftl" as common>
<@common.pageTemplate "Каталог">
    <h3>Создать новый товар</h3>
    <div class="product">
        <form action="/admin/catalog-editing/create" method="post">
            Ссылка на изображение:<input type="text" name="image"/><br><br>
            Название товара: <input type="text" name="title"/><br><br>
            Коллекция товара: <input type="text" name="collection"/><br><br>
            Категория товара: <input type="text" name="category"/><br><br>
            Цена: <input type="number" name="price"/><br><br>
            Описание товара: <input type="text" name="description"/><br><br>
            <input type="submit" value="Добавить товар"/>
        </form>
        <hr>
<#--        <p>${errorId}</p>-->
        <form action="/admin/catalog-editing/delete" method="post">
            Код товара:<input type="number" name="id"/><br><br>
            <input type="submit" value="Удалить товар"/>
        </form>

    </div>
</@common.pageTemplate>