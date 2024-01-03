<#import "templates/common.ftl" as common>
<#list topics as topic>
<@common.pageTemplate title="${topic.title}">

    <section>
        <h2>${topic.title}</h2>
        <ul class="topic__list">
            <#list posts as post>
                <#if post.category == topic.title>
                    <li class="topic__block"><a class="topic__link" href="${topic.title}/post/${post.title}">${post.title}</a> </li>
                </#if>
            </#list>
        </ul>
    </section>
</@common.pageTemplate>
</#list>