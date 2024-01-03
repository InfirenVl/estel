<#import "templates/common.ftl" as common>
<@common.pageTemplate "Главная">

    <section>
        <h2>Темы</h2>
        <ul class="topic__list">
            <#list topics as topic>
                <li class="topic__block"><a class="topic__link" href="/topic/${topic.title}">${topic.title}</a> </li>
            </#list>
        </ul>
    </section>



</@common.pageTemplate>
