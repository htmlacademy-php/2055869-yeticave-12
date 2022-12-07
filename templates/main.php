<main class="container">
    <section class="promo">
        <h2 class="promo__title">Нужен стафф для катки?</h2>
        <p class="promo__text">На нашем интернет-аукционе ты найдёшь самое эксклюзивное сноубордическое и горнолыжное снаряжение.</p>
        <ul class="promo__list">
            <?php foreach ($categories as $key => $row) { ?>
                <li class="promo__item promo__item--<?= XSSfiltr($row['symbol_code']) ?>">
                    <a class="promo__link" href="pages/all-lots.html"><?= XSSfiltr($row['name']) ?></a>
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
                if (!is_date_valid($item['expiration_date'])) {
                    print('некорректный формат даты');
                } 
                else {
                    $time = timeLeft($item['expiration_date']);
                    if ($time['hours'] < 01 && $time['minutes'] > 00) {
                        $class = 'timer--finishing';
                    } elseif ($time['hours'] < 00) {
                        continue;
                    }
                }
                ?>
                <li class="lots__item lot">
                    <div class="lot__image">
                        <img src="<?= XSSfiltr($item['img']) ?>" width="350" height="260" alt="">
                    </div>
                    <div class="lot__info">
                        <span class="lot__category"><?= XSSfiltr($item['name']) ?></span>
                        <h3 class="lot__title"><a class="text-link"
                                                  href="pages/lot.html"><?= XSSfiltr($item['title']) ?></a></h3>
                        <div class="lot__state">
                            <div class="lot__rate">
                                <span class="lot__amount">Стартовая цена</span>
                                <span class="lot__cost"><?= lotPrice(XSSfiltr($item['start_price'])) ?></span>
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