<#import "templates/common.ftl" as common>
<#list posts as post>
    <@common.pageTemplate title="${post.title}">
        <main>
            <div class="product-page">

                <div class="product-plate">
                    <div class="product-image">
                        <img class="image-product" src="/img/${post.filename}" alt="${post.title}">
                    </div>
                    <div class="product-details">
                        <div class="title-prod">
                            ${post.title}
                        </div>
                        <div class="description-option">
                            Категория:${post.category}
                        </div>
                        <div class="description-option">
                            Описание: ${post.description}
                        </div>
                        <div class="description-option">
                            От: ${post.username}
                        </div>
                        <div class="description-option">
                            <#if auth == "MODERATOR" || getCurrentUsername == post.username>
                                <form action="/topic/{title}/post/{title}/delete" method="post">
                                    <button class="delete__button" name="id" value="${post.id}"></button>
                                </form>

                            </#if>
                        </div>
                    </div>
                </div>
            </div>
            <#if auth == "MODERATOR" || auth == "USER" || auth =="ADMIN">
            <div class="product-plate">
                <form action="/topic/{title}/post/{title}/new-comment" method="post">
                    <label>Оставьте комментарий</label>
                    <input type="hidden" name="idPost" value="${post.id}"/>
                    <div class="text-field-div">
                        <input class="text-field" type="text" name="comment" placeholder="Комментарий" required/>
                    </div>
                    <button>Оставить коментарий</button>
                </form>
            </div>
            <div class="product-plate">
                </#if>

                <#list comment as comm>
                    <#if "${comm.idPost}" == "${post.id}">
                        <div>

                            <p>От: ${comm.username}</p>
                            <br>
                            <p>Текст: ${comm.comment}</p>
                            <br>
                            <br>


                        </div>

                    </#if>
                </#list>

            </div>
        </main>
    <#--    <section>-->
    <#--        <h2>Posts</h2>-->
    <#--&lt;#&ndash;        <ul>&ndash;&gt;-->
    <#--&lt;#&ndash;            <#list posts as post>&ndash;&gt;-->
    <#--&lt;#&ndash;                <li><a href="${topic.title}/post/${post.title}">${post.title}</a> - ${post.description}</li>&ndash;&gt;-->
    <#--&lt;#&ndash;            </#list>&ndash;&gt;-->
    <#--&lt;#&ndash;        </ul>&ndash;&gt;-->
    <#--    </section>-->
    </@common.pageTemplate>
</#list>
