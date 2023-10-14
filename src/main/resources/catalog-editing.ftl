<#import "templates/common.ftl" as common>
<@common.pageTemplate "Каталог">
    <div class="catalog-edit-page">
        <div class="catalog-edit-page-label">
            Создать новый товар
        </div>
        <div class="product-add">
            <form action="/admin/catalog-editing/create" method="post">
                <div class="form-column">
                    <div class="text-field-div"><input class="text-field" type="text" name="image"
                                                       placeholder="Ссылка на изображение" required/></div>
                    <div class="text-field-div"><input class="text-field" type="text" name="title"
                                                       placeholder="Название товара" required/></div>
                    <div class="text-field-div"><input class="text-field" type="text" name="collection"
                                                       placeholder="Коллекция товара" required/></div>
                    <div class="text-field-div"><select class="text-field" name="category"
                                                        placeholder="Категория товара" required>
                            <option value="">Выберите категорию</option>
                            <option value="kitchen" name="category">Кухни</option>
                            <option value="sleeping" name="category">Спальня</option>
                            <option value="hall" name="category">Гостиная</option>
                        </select></div>
                    <div class="text-field-div"><input class="text-field" type="number" name="price" placeholder="Цена"
                                                       required/></div>
                    <div class="text-field-div"><input class="text-field" type="text" name="description"
                                                       placeholder="Описание товара" required/></div>
                    <div class="text-field-div"><input type="submit" class="add-button" value="Добавить товар"/></div>
                </div>
            </form>
        </div>
        <div class="catalog-edit-page-label">
           Удалить товар
        </div>
        <div class="product-add">
            <form action="/admin/catalog-editing/delete" method="post">
                <div class="text-field-div">
                    Код товара:<input class="text-field" type="number" name="id" required/>
                </div>
            <input class="add-button" type="submit" value="Удалить товар"/>
                <p>${errorId!""}</p>
            </form>

        </div>
    </div>


            <
</@common.pageTemplate>