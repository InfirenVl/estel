<#import "templates/common.ftl" as common>
<@common.pageTemplate "Каталог">
    <div class="catalog-edit-page">
        <div class="catalog-edit-page-label">
            Создать новый товар
        </div>
        <div class="product-add">
            <form action="/new-post/create" method="post">
                <div class="form-column">
                    <div class="text-field-div"><input class="text-field" type="text" name="title"
                                                       placeholder="Заголовок поста" required/></div>
                    <div class="text-field-div"><textarea name="message" placeholder="Ваш пост" required></textarea></div>
                    <div class="text-field-div"><select class="text-field" name="category"
                                                        placeholder="Тема" required>
                            <option value="">Выберите категорию</option>
                            <option value="Кухни" name="category">Софт</option>
                            <option value="Спальни" name="category">Железо</option>
                            <option value="Гостинные" name="category">Переферия</option>
                        </select></div>
                    <div class="text-field-div"><input type="submit" class="add-button" value="Опубликовать"/></div>
                </div>
            </form>
        </div>
        <div class="catalog-edit-page-label">
           Удалить пост
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



</@common.pageTemplate>