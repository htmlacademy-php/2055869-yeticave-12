<main class="container">
    <section class="promo">
        <h2 class="promo__title">Нужен стафф для катки?</h2>
        <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
        <ul class="promo__list">
            <?php foreach ($categories as $cssClass => $categoryName) { ?>
                <li class="promo__item <?= htmlspecialchars($cssClass) ?>">
                    <a class="promo__link" href="pages/all-lots.html"><?= htmlspecialchars($categoryName) ?></a>
                </li>
            <?php } ?>
        </ul>
    </section>
    <section class="lots">
        <div class="lots__header">
            <h2>Открытые лоты</h2>
        </div>
        <ul class="lots__list">
            <?php foreach ($lots as $key => $item) { ?>
                <li class="lots__item lot">
                    <div class="lot__image">
                        <img src="<?= htmlspecialchars($item['url']) ?>" width="350" height="260" alt="">
                    </div>
                    <div class="lot__info">
                        <span class="lot__category"><?= htmlspecialchars($item['category']) ?></span>
                        <h3 class="lot__title"><a class="text-link" href="pages/lot.html"><?= htmlspecialchars($item['name']) ?></a></h3>
                        <div class="lot__state">
                            <div class="lot__rate">
                                <span class="lot__amount">Стартовая цена</span>
                                <span class="lot__cost"><?= htmlspecialchars(lotPrice($item['price'])) ?></span>
                            </div>
                            <div class="lot__timer timer">
                                <?= $currentTime ?>
                            </div>
                        </div>
                    </div>
                </li>
            <?php } ?>
        </ul>
    </section>
</main>