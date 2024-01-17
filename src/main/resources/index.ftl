<#import "templates/common.ftl" as common>
<@common.pageTemplate "Главная">

    <section>
        <h2>Темы</h2>
        <ul class="topic__list">

        </ul>
    </section>

    <section class="banner">
        <h1 class="main__title">Профессиональный форум HardFix по ремонту и настройке компьютеров, копировальной техники, принтеров и другой периферии.</h1>
        <a href="/registration" class="btn">Присоединиться к комьюнити</a>
    </section>

    <section class="topik">
        <h2 class="subtitle">Темы на форуме</h2>

        <#list topics as topic>
            <div class="topik__container">
                <h4 class="topik__title"> <a href="/topic/${topic.title}" class="topik-title__link">${topic.title}</a></h4>

                <#assign postCount = 0>
                <#assign reversedPosts = posts?reverse>
                <#list reversedPosts as post>
                    <#if post.category == topic.title && postCount < 3>
                            <div class="topik__items">
                                <div class="topik-name__container">
                                    <#if post.category == "Софт">
                                        <p><i class="fa-brands fa-windows"></i></p>
                                    <#elseif post.category == "Железо">
                                        <p><i class="fa-solid fa-microchip"></i></p>
                                    </#if>
                                    <div class="left">
                                        <p class="last-post__name"> <a class="topik-name__link" href="/topic/${topic.title}/post/${post.title}">${post.title}</a></p>
    <#--                                    <p class="topik__name"><a class="topik-name__link" href="theme.html"> Windows 11</a></p>-->
    <#--                                    <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>-->
                                    </div>
                                </div>
                                <div class="topik-last-post__container">
                                    <p class="last-post__author">${post.username}</p>
                                </div>
                            </div>
                        <#assign postCount++>
                    </#if>
                </#list>
            </div>
        </#list>


        <div class="topik__container">
            <h4 class="topik__title">Железо</h4>
            <div class="topik__items">
                <div class="topik-name__container">

                    <div class="left">
                        <p class="topik__name"><a class="topik-name__link" href="#"> Видеокарты</a></p>
                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>
                    </div>
                </div>
                <div class="topik-last-post__container">
                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>
                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>
                </div>
            </div>
            <div class="topik__items">
                <div class="topik-name__container">
                    <p><i class="fa-solid fa-hard-drive"></i></p>
                    <div class="left">
                        <p class="topik__name"><a class="topik-name__link" href="#"> Системы</a></p>
                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>
                    </div>
                </div>
                <div class="topik-last-post__container">
                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>
                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>
                </div>
            </div>
            <div class="topik__items">
                <div class="topik-name__container">
                    <p><i class="fa-solid fa-window-restore"></i></p>
                    <div class="left">
                        <p class="topik__name"><a class="topik-name__link" href="#"> Компоненты</a></p>
                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>
                    </div>
                </div>
                <div class="topik-last-post__container">
                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>
                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>
                </div>
            </div>
            <div class="topik__items">
                <div class="topik-name__container">
                    <p><i class="fa-solid fa-memory"></i></p>
                    <div class="left">
                        <p class="topik__name"><a class="topik-name__link" href="#"> Хранилище</a></p>
                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>
                    </div>
                </div>
                <div class="topik-last-post__container">
                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>
                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>
                </div>
            </div>
        </div>

        <div class="topik__container">
            <h4 class="topik__title">Перефирия</h4>
            <div class="topik__items">
                <div class="topik-name__container">
                    <p><i class="fa-solid fa-microchip"></i></p>
                    <div class="left">
                        <p class="topik__name"><a class="topik-name__link" href="#"> Видеокарты</a></p>
                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>
                    </div>
                </div>
                <div class="topik-last-post__container">
                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>
                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>
                </div>
            </div>
            <div class="topik__items">
                <div class="topik-name__container">
                    <p><i class="fa-solid fa-hard-drive"></i></p>
                    <div class="left">
                        <p class="topik__name"><a class="topik-name__link" href="#"> Системы</a></p>
                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>
                    </div>
                </div>
                <div class="topik-last-post__container">
                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>
                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>
                </div>
            </div>
            <div class="topik__items">
                <div class="topik-name__container">
                    <p><i class="fa-solid fa-window-restore"></i></p>
                    <div class="left">
                        <p class="topik__name"><a class="topik-name__link" href="#"> Компоненты</a></p>
                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>
                    </div>
                </div>
                <div class="topik-last-post__container">
                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>
                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>
                </div>
            </div>
            <div class="topik__items">
                <div class="topik-name__container">
                    <p><i class="fa-solid fa-memory"></i></p>
                    <div class="left">
                        <p class="topik__name"><a class="topik-name__link" href="#"> Хранилище</a></p>
                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>
                    </div>
                </div>
                <div class="topik-last-post__container">
                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>
                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>
                </div>
            </div>
        </div>

<#--        <div class="topik__container">-->
<#--            <h4 class="topik__title">Сеть</h4>-->
<#--            <div class="topik__items">-->
<#--                <div class="topik-name__container">-->
<#--                    <p><i class="fa-solid fa-ethernet"></i></p>-->
<#--                    <div class="left">-->
<#--                        <p class="topik__name"><a class="topik-name__link" href="#"> Сеть</a></p>-->
<#--                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <div class="topik-last-post__container">-->
<#--                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>-->
<#--                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="topik__items">-->
<#--                <div class="topik-name__container">-->
<#--                    <p><i class="fa-solid fa-wifi"></i></p>-->
<#--                    <div class="left">-->
<#--                        <p class="topik__name"><a class="topik-name__link" href="#"> Беспроводная сеть</a></p>-->
<#--                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <div class="topik-last-post__container">-->
<#--                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>-->
<#--                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="topik__items">-->
<#--                <div class="topik-name__container">-->
<#--                    <p><i class="fa-solid fa-chart-simple"></i></p>-->
<#--                    <div class="left">-->
<#--                        <p class="topik__name"><a class="topik-name__link" href="#"> Операторы беспроводной связи</a></p>-->
<#--                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <div class="topik-last-post__container">-->
<#--                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>-->
<#--                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="topik__items">-->
<#--                <div class="topik-name__container">-->
<#--                    <p><i class="fa-solid fa-network-wired"></i></p>-->
<#--                    <div class="left">-->
<#--                        <p class="topik__name"><a class="topik-name__link" href="#"> Распределенных вычислений</a></p>-->
<#--                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <div class="topik-last-post__container">-->
<#--                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>-->
<#--                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->

<#--        <div class="topik__container">-->
<#--            <h4 class="topik__title">Ноутбуки</h4>-->
<#--            <div class="topik__items">-->
<#--                <div class="topik-name__container">-->
<#--                    <p><i class="fa-solid fa-mobile-screen-button"></i></p>-->
<#--                    <div class="left">-->
<#--                        <p class="topik__name"><a class="topik-name__link" href="#"> ОС Android и Chrome</a></p>-->
<#--                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <div class="topik-last-post__container">-->
<#--                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>-->
<#--                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="topik__items">-->
<#--                <div class="topik-name__container">-->
<#--                    <p><i class="fa-solid fa-laptop"></i></p>-->
<#--                    <div class="left">-->
<#--                        <p class="topik__name"><a class="topik-name__link" href="#"> Общее обсуждение ноутбука</a></p>-->
<#--                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <div class="topik-last-post__container">-->
<#--                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>-->
<#--                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="topik__items">-->
<#--                <div class="topik-name__container">-->
<#--                    <p><i class="fa-solid fa-stethoscope"></i></p>-->
<#--                    <div class="left">-->
<#--                        <p class="topik__name"><a class="topik-name__link" href="#"> Техническая поддержка ноутбуков</a></p>-->
<#--                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <div class="topik-last-post__container">-->
<#--                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>-->
<#--                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>-->
<#--                </div>-->
<#--            </div>-->
<#--            <div class="topik__items">-->
<#--                <div class="topik-name__container">-->
<#--                    <p><i class="fa-solid fa-laptop"></i></p>-->
<#--                    <div class="left">-->
<#--                        <p class="topik__name"><a class="topik-name__link" href="#">Макбуки</a></p>-->
<#--                        <p class="topik__comment"><i class="fa-regular fa-comments"></i> 466</p>-->
<#--                    </div>-->
<#--                </div>-->
<#--                <div class="topik-last-post__container">-->
<#--                    <p class="last-post__name"> <a class="topik-name__link" href="#">Windows 11 clean install tutorial</a></p>-->
<#--                    <p class="last-post__author">punkmeh, 22 декабря 2021</p>-->
<#--                </div>-->
<#--            </div>-->
<#--        </div>-->
    </section>


</@common.pageTemplate>
