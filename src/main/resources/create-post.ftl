<#import "templates/common.ftl" as common>
<@common.pageTemplate "Каталог">
    <div class="catalog-edit-page">
        <div class="catalog-edit-page-label">
            Создать новый товар
        </div>
        <div class="product-add">
            <form action="/new-post/create" method="post"  enctype="multipart/form-data">
                <div class="form-column">
                    <div class="text-field-div"><input class="text-field" type="text" name="title"
                                                       placeholder="Заголовок поста" required/></div>
                    <div class="text-field-div"><textarea name="description" placeholder="Ваш пост" required></textarea></div>
                    <label for="image">Выберите изображение:</label>
                    <input type="file" id="file" name="file">
<#--                    <div name="username" value="${pos}"></div>-->
                    <div class="text-field-div"><select class="text-field" name="category"
                                                        placeholder="Тема" required>
                            <option value="">Выберите категорию</option>
                            <option value="Софт" name="category">Софт</option>
                            <option value="Железо" name="category">Железо</option>
                            <option value="Переферия" name="category">Переферия</option>
                            <option value="Сеть" name="category">Сеть</option>
                            <option value="Ноутбуки" name="category">Ноутбуки</option>
                        </select></div>
                    <div class="text-field-div"><input type="submit" class="add-button" value="Опубликовать"/></div>
                </div>
            </form>
        </div>
    </div>



</@common.pageTemplate>