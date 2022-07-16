require([
    'jquery',
    'vanillaJsTabs',
    'lightbox2'
], function ($) {
    $(document).ready(function () {
        // Tabs product page
        if ($('#tabs').length) {
            var tabs = new Tabs({ elem: 'tabs' });

            $('#tabs').find('.js-tabs__header a').click(function() {
                var tabsHash = this.hash;
                window.location.hash = tabsHash;
            });

            if (window.location.hash) {
                var tabIndex = $('#tabs .js-tabs__header li a').index($('a[href="' + window.location.hash + '"]'));
                tabs.open(tabIndex);
            }
        }
    });
});
