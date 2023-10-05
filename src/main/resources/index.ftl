<#import "templates/common.ftl" as common>
<@common.pageTemplate "Эстель Главная страница">

        <section class="banner">
            <h1>Сделай интерьер своей мечты вместе с Эстель!</h1>
            <img class="banner__img" src="/img/banner.svg" alt="banner">
        </section>

        <section class="catalog">
            <ul class="catalog__menu">
                <li><a class="catalog__menu__item" href="/catalog">Кухни</a>
                    <ul class="catalog__submenu">
                        <li><a class="catalog__submenu__item" href="/catalog">Современные кухни</a></li>
                        <li><a class="catalog__submenu__item" href="/catalog">Классические кухни</a></li>
                        <li><a class="catalog__submenu__item" href="/catalog">Готовые кухни</a></li>
                        <li><a class="catalog__submenu__item" href="/catalog">Модули Радуга</a></li>
                        <li><a class="catalog__submenu__item" href="/catalog">Мойки и смесители</a></li>
                        <li><a class="catalog__submenu__item" href="/catalog">Столешницы</a></li>
                    </ul>
                </li>
                <li><a class="catalog__menu__item" href="/catalog">Гостиные</a>
                    <ul class="catalog__submenu">
                        <li><a class="catalog__submenu__item" href="catalog.html">Модульные стенки</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Министенки</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Шкафы для гостиной</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Комоды для гостиной</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Полки</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Зеркала</a></li>
                    </ul>
                </li>
                <li><a class="catalog__menu__item" href="catalog.html">Спальни</a>
                    <ul class="catalog__submenu">
                        <li><a class="catalog__submenu__item" href="catalog.html">Кровати с подъемным механизмом</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Двуспальные кровати</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Односпальные кровати</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Прикроватные тумбы</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Шкафы для спальни</a></li>
                        <li><a class="catalog__submenu__item" href="catalog.html">Комоды для спальни</a></li>
                    </ul>
                </li>
                <li><a class="catalog__menu__item" href="catalog.html">Прихожие</a></li>
                <li><a class="catalog__menu__item" href="catalog.html">Новинки</a></li>
                <li><a id="close-catalog" class="catalog__menu__item" href="catalog.html">Скидки</a></li>
            </ul>
            <div class="slider">
                <div class="slider__container">
                    <button id="slider-prev" onclick="prev()"> &lt; </button>
                    <div class="slider__img-container">
                        <a id="content1" class="slider__img-container__item-active" href="/catalog"><img src="/img/slider_img1.png" alt="Гостиная Лайт"></a>
                        <a id="content2" href="catalog.html"><img src="/img/slider_img2.png" alt="Гостиная Стокгольм"></a>
                        <a id="content3" href="catalog.html"><img src="/img/slider_img3.png" alt="Кухня Прованс"></a>
                        <a id="content4" href="catalog.html"><img src="/img/slider_img4.png" alt="Кухня Брауни"></a>
                        <a id="content5" href="catalog.html"><img src="/img/slider_img5.png" alt="Кухня Ноэми"></a>
                        <a id="content6" href="catalog.html"><img src="/img/slider_img6.png" alt="Спальный гарнитур Асти"></a>
                        <a id="content7" href="catalog.html"><img src="/img/slider_img7.png" alt="Спальный гарнитур Стокгольм"></a>
                    </div>
                    <button id="slider-next" onclick="next()"> &gt; </button>
                </div>
            </div>
        </section>

        <section class="advantages">
            <h2>Наши преимущества</h2>
            <div class="advantages-container">
                <div class="advantages-container__item">
                    <img class="advantages-container__item-img" src="/img/guarantee.svg" alt="guarantee">
                    <h3>Гарантия</h3>
                    <p class="advantages-container__item-text">На всю нашу мебель на 2 года</p>
                </div>
                <div class="advantages-container__item">
                    <img class="advantages-container__item-img" src="/img/clock.svg" alt="clock">
                    <h3>Скорость</h3>
                    <p class="advantages-container__item-text">Выполним ваш заказ и осуществим доставку в самые короткие сроки</p>
                </div>
                <div class="advantages-container__item">
                    <img class="advantages-container__item-img" src="/img/thumbup.svg" alt="thump up">
                    <h3>Качество</h3>
                    <p class="advantages-container__item-text">97% наших клиентов остаются довольны нашей продукцией</p>
                </div>
                <div class="advantages-container__item">
                    <img class="advantages-container__item-img" src="/img/check.svg" alt="check">
                    <h3>Надёжность</h3>
                    <p class="advantages-container__item-text">Мы находимся на рынке уже более 25 лет</p>
                </div>
            </div>
        </section>

        <section class="feedback">
            <h2>Отзывы наших покупателей</h2>
            <div class="feedback-container">
                <div class="feedback-container__item">
                    <div class="feedback-container__item-info">
                        <img class="feedback-container__item-info__avatar" src="/img/person.svg" alt="avatar">
                        <div class="feedback-container__item-info__text">
                            <p class="feedback-container__item-info__text-name">Олег</p>
                            <p class="feedback-container__item-info__text-date">21 окт 2022 в 4:20</p>
                        </div>
                    </div>
                    <p class="feedback-container__item-text">Устанавливали кухню эстель полгода назад. Качеством довольны, нареканий нет. Тот случай, когда цена/качество идеально удовлетворили запросы.</p>
                </div>
                <div class="feedback-container__item">
                    <div class="feedback-container__item-info">
                        <img class="feedback-container__item-info__avatar" src="/img/person.svg" alt="avatar">
                        <div class="feedback-container__item-info__text">
                            <p class="feedback-container__item-info__text-name">Дмитрий</p>
                            <p class="feedback-container__item-info__text-date">17 ноя 2022 в 12:34</p>
                        </div>
                    </div>
                    <p class="feedback-container__item-text">Купила кухню в Эстель, все понравилось, особенно цены и сроки изготовления. Считала свою кухню в других местах, в Эстель за 69 руб. купила, в других компаниях аналогичная модель обошлась бы мне за 130 тыс. руб.</p>
                </div>
                <div class="feedback-container__item">
                    <div class="feedback-container__item-info">
                        <img class="feedback-container__item-info__avatar" src="/img/person.svg" alt="avatar">
                        <div class="feedback-container__item-info__text">
                            <p class="feedback-container__item-info__text-name">Ксения</p>
                            <p class="feedback-container__item-info__text-date">6 ноя 2022 в 13:37</p>
                        </div>
                    </div>
                    <p class="feedback-container__item-text">Выбирали с мужем, он у меня очень внимательный к деталям. Понравилась кухня без ручек.  Заказали ее месяц назад. Сделали быстро, всего 7 дней. Всем довольна, особенно работой менеджера.</p>
                </div>
            </div>
        </section>
</@common.pageTemplate>
