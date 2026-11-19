<!-- BEGIN: main -->
<div class="row viewgrid shops-viewgrid shops-viewgrid-{MODULE_NAME}">
    <!-- BEGIN: loop -->
    <div class="col-sm-12 col-md-{NUM}">
        <div class="thumbnail shoe-product-card">
            <div style="max-height: {HEIGHT}px" class="item-image shoe-img-wrap">
                <a href="{ROW.link_pro}" title="{ROW.title}" rel="dofollow"><img src="{ROW.homeimgthumb}" alt="{ROW.title}"
                <!-- BEGIN: tooltip_js -->data-content='{ROW.hometext}' data-rel="tooltip" data-img="{ROW.homeimgthumb}" <!-- END: tooltip_js -->class="img-thumbnail" style="max-height:{HEIGHT}px;max-width:{WIDTH}px;"></a>
                <div class="shoe-quick-action">
                    <a href="{ROW.link_pro}" class="btn-quick-buy" title="Mua nhanh {ROW.title}">
                        <em class="fa fa-bolt"></em> Mua nhanh
                    </a>
                </div>
            </div>
            <div class="info_pro">
                <!-- BEGIN: new -->
                <span class="label label-success newday">{LANG.newday}</span>
                <!-- END: new -->
                <!-- BEGIN: discounts -->
                <span class="label label-danger shoe-sale-badge">-{PRICE.discount_percent}{PRICE.discount_unit}</span>
                <!-- END: discounts -->
                <!-- BEGIN: point -->
                <span class="label label-info" title="{point_note}">+{point}</span>
                <!-- END: point -->
                <!-- BEGIN: gift -->
                <span class="label label-success">+<em class="fa fa-gift fa-lg">&nbsp;</em></span>
                <!-- END: gift -->
            </div>
            <div class="caption text-center">
                <h3>
                    <a href="{ROW.link_pro}" title="{ROW.title}" rel="dofollow">{ROW.title}</a>
                </h3>
                <!-- BEGIN: product_code -->
                <p class="label label-default">{PRODUCT_CODE}</p>
                <!-- END: product_code -->
                <!-- BEGIN: adminlink -->
                <p>{ADMINLINK}</p>
                <!-- END: adminlink -->
                <!-- BEGIN: price -->
                <p class="price">
                    <!-- BEGIN: discounts -->
                    <span class="money">{PRICE.sale_format} {PRICE.unit}</span> <span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span>
                    <!-- END: discounts -->
                    <!-- BEGIN: no_discounts -->
                    <span class="money">{PRICE.price_format} {PRICE.unit}</span>
                    <!-- END: no_discounts -->
                </p>
                <!-- END: price -->
                <!-- BEGIN: contact -->
                <p class="price">
                    {LANG.detail_pro_price}: <span class="money">{LANG.price_contact}</span>
                </p>
                <!-- END: contact -->
                <!-- BEGIN: compare -->
                <p>
                    <input type="checkbox" value="{ROW.id}" {ch} onclick="nv_compare({ROW.id});" id="compare_{ROW.id}" /><button type="button" class="btn btn-link btn-xs" style="padding: 0 4px;" onclick="nv_compare_click();">{LANG.compare}</button>
                </p>
                <!-- END: compare -->
                <div class="clearfix">
                    <!-- BEGIN: order -->
                    <button type="button" id="{ROW.id}" title="{ROW.title}" onclick="cartorder(this, {GROUP_REQUIE}, '{ROW.link_pro}'); return !1;" class="btn btn-primary btn-xs">{LANG.add_product}</button>
                    <!-- END: order -->
                    <!-- BEGIN: product_empty -->
                    <button type="button" class="btn btn-danger disabled btn-xs">{LANG.product_empty}</button>
                    <!-- END: product_empty -->
                    <!-- BEGIN: wishlist -->
                    <button type="button" title="{ROW.title}" onclick="wishlist({ROW.id}, this)" class="btn btn-primary btn-xs <!-- BEGIN: disabled -->disabled<!-- END: disabled -->">{LANG.wishlist}</button>
                    <!-- END: wishlist -->
                </div>
            </div>
        </div>
    </div>
    <!-- END: loop -->
    <!-- BEGIN: page -->
    <div class="text-center w-100 gen-page">{PAGE}</div>
    <!-- END: page -->
</div>
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function() {
        document.querySelectorAll('.shoe-product-card').forEach(function(card) {
            var saleEl = card.querySelector('.price .money');
            var originEl = card.querySelector('.price .discounts_money');
            var badgeEl = card.querySelector('.shoe-sale-badge');
            if (saleEl && originEl && badgeEl) {
                var saleVal = parseFloat(saleEl.innerText.replace(/[^\d]/g, ''));
                var originVal = parseFloat(originEl.innerText.replace(/[^\d]/g, ''));
                if (originVal > 0 && saleVal > 0 && saleVal < originVal) {
                    var percent = Math.round(((originVal - saleVal) / originVal) * 100);
                    badgeEl.innerText = '-' + percent + '%';
                }
            }
        });
    });
</script>
<!-- BEGIN: tooltip_js -->
<script type="text/javascript" data-show="after">
    $(document).ready(function() {
        $("[data-rel='tooltip']").tooltip({
            placement : "bottom",
            html : true,
            title : function() {
                return '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';
            }
        });
    });
</script>
<!-- END: tooltip_js -->
<!-- END: main -->