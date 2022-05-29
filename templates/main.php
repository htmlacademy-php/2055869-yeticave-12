<main class="container">
    <section class="promo">
        <h2 class="promo__title">Нужен стафф для катки?</h2>
        <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
        <ul class="promo__list">
            <?php foreach ($categories as $cssClass => $categoryName) { ?>
                <li class="promo__item <?= XSSfiltr($cssClass) ?>">
                    <a class="promo__link" href="pages/all-lots.html"><?= XSSfiltr($categoryName) ?></a>
                </li>
            <?php } ?>
        </ul>
    </section>
    <section class="lots">
        <div class="lots__header">
            <h2>Открытые лоты</h2>
        </div>
        <ul class="lots__list">
            <?php foreach ($lots as $key => $item) {
                $class = '';
                $time = timeLeft($item['dateLeft']);
                if ($time === false) {
                    continue;
                }
                if ($time['hours'] < 01 && $time['minutes'] > 00) {
                    $class = 'timer--finishing';
                } elseif ($time['hours'] < 00) {
                    continue;
                }
                ?>
                <li class="lots__item lot">
                    <div class="lot__image">
                        <img src="<?= XSSfiltr($item['url']) ?>" width="350" height="260" alt="">
                    </div>
                    <div class="lot__info">
                        <span class="lot__category"><?= XSSfiltr($item['category']) ?></span>
                        <h3 class="lot__title"><a class="text-link"
                                                  href="pages/lot.html"><?= XSSfiltr($item['name']) ?></a></h3>
                        <div class="lot__state">
                            <div class="lot__rate">
                                <span class="lot__amount">Стартовая цена</span>
                                <span class="lot__cost"><?= lotPrice(XSSfiltr($item['price'])) ?></span>
                            </div>
                            <div class="lot__timer timer <?= $class ?>">
                                <?= $time['hours'] . ': ' . $time['minutes'] ?>

                            </div>
                        </div>
                    </div>
                </li>
            <?php } ?>
        </ul>
    </section>
</main>