<!-- BEGIN: main -->
<script type="text/javascript" src="{NV_STATIC_URL}themes/default/images/{MODULE_FILE}/jquery.ez-plus.js"></script>
<div class="product-detail <!-- BEGIN: popupid -->prodetail-popup<!-- END: popupid -->" itemtype="http://schema.org/Product" itemscope>
    <span class="d-none hidden hide" itemprop="mpn" content="{PRODUCT_CODE}"></span>
    <span class="d-none hidden hide" itemprop="sku" content="{PRODUCT_CODE}"></span>
    <div class="d-none hidden hide" itemprop="brand" itemtype="http://schema.org/Thing" itemscope>
        <span itemprop="name">N/A</span>
    </div>
    <!-- BEGIN: allowed_rating_snippets -->
    <div class="d-none hidden hide" itemprop="aggregateRating" itemtype="http://schema.org/AggregateRating" itemscope>
        <span itemprop="reviewCount">{RATE_TOTAL}</span>
        <span itemprop="ratingValue">{RATE_VALUE}</span>
    </div>
    <!-- END: allowed_rating_snippets -->
    <div class="d-none hidden hide" itemprop="offers" itemtype="http://schema.org/Offer" itemscope>
        <!-- BEGIN: price1 -->
        <span itemprop="price">{PRICE.sale}</span>
        <span itemprop="priceCurrency">{PRICE.unit}</span>
        <!-- END: price1 -->
        <a itemprop="url" href="{PRO_FULL_LINK}"></a>
        <span itemprop="priceValidUntil">{PRICEVALIDUNTIL}</span>
        <span itemprop="availability">{AVAILABILITY}</span>
    </div>
    <div class="panel panel-default panel-product-info">
        <div class="panel-body">
            <div class="row">
                <div class="col-xs-24 col-sm-10 col-md-10 text-center">
                    <!-- BEGIN: oneimage -->
                    <div class="product-one-image mb-2">
                        <img itemprop="image" src="{IMAGE.file}" alt="{DATA.homeimgalt}" id="product-image-one-view">
                    </div>
                    <script type="text/javascript">
                    $(document).ready(function() {
                        $('#product-image-one-view').ezPlus({
                            scrollZoom: true,
                            containLensZoom: true
                        });
                    });
                    </script>
                    <!-- END: oneimage -->
                    <!-- BEGIN: image -->
                    <div class="product-image-gallery mb-2">
                        <div class="gallery-view">
                            <div class="gallery-view-inner owl-carousel" id="product-image-gallery-view">
                                <!-- BEGIN: loop -->
                                <div class="item" data-item="{IMAGE_STT}">
                                    <div class="item-inner">
                                        <img itemprop="image" src="{IMAGE.file}" alt="{DATA.homeimgalt}" data-zoom-image="{IMAGE.file}">
                                    </div>
                                </div>
                                <!-- END: loop -->
                            </div>
                        </div>
                        <div class="gallery-nav owl-carousel" id="product-image-gallery-nav">
                            <!-- BEGIN: loop1 -->
                            <div class="item<!-- BEGIN: active --> active<!-- END: active -->" data-item="{IMAGE_STT}">
                                <div class="item-inner">
                                    <a href="#" class="item-click-change" data-offset="{IMAGE_STT}"><img src="{IMAGE.thumb}" alt="{DATA.homeimgalt} thumb"></a>
                                </div>
                            </div>
                            <!-- END: loop1 -->
                        </div>
                    </div>
                    <link rel="stylesheet" href="{NV_STATIC_URL}themes/default/images/{MODULE_FILE}/OwlCarousel2/assets/owl.carousel.min.css">
                    <script type="text/javascript" src="{NV_STATIC_URL}themes/default/images/{MODULE_FILE}/OwlCarousel2/owl.carousel.min.js"></script>
                    <script type="text/javascript">
                    $(document).ready(function() {
                        // Slide ảnh sản phẩm
                        var owlView = $('#product-image-gallery-view');
                        var owlNav = $('#product-image-gallery-nav');
                        owlView.owlCarousel({
                            items: 1,
                            nav: true,
                            navText: ['<span><i class="fa fa-angle-left" aria-hidden="true"></i></span>', '<span><i class="fa fa-angle-right" aria-hidden="true"></i></span>'],
                            dots: false,
                            lazyLoad: true,
                            autoplay: false,
                            margin: 5
                        });
                        owlNav.owlCarousel({
                            nav: false,
                            dots: false,
                            autoplay: false,
                            items: 5,
                            margin: 5
                        });
                        owlView.on('changed.owl.carousel', function(e) {
                            $('.item', owlNav).removeClass('active');
                            $('[data-item="' + e.item.index + '"]', owlNav).addClass('active');
                            $('[data-item="' + e.item.index + '"]', owlView).find('img').ezPlus({
                                zIndex: 9,
                                zoomContainerAppendTo: owlView,
                                scrollZoom: true,
                                containLensZoom: true
                            });
                        });
                        $('.item-click-change', owlNav).on('click', function(e) {
                            e.preventDefault();
                            owlView.trigger('to.owl.carousel', [$(this).data('offset'), 300]);
                        });
                        // Zoom ảnh đầu tiên
                        $('[data-item="0"]', owlView).find('img').ezPlus({
                            zIndex: 9,
                            zoomContainerAppendTo: owlView,
                            scrollZoom: true,
                            containLensZoom: true
                        });
                    });
                    </script>
                    <!-- END: image -->
                    <!-- BEGIN: adminlink -->
                    <div class="admin-links margin-bottom mb-2">{ADMINLINK}</div>
                    <!-- END: adminlink -->
                    <!-- BEGIN: social_icon -->
                    <div class="panel panel-default socialicon-wrap">
                        <div class="panel-body">
                            <div class="socialicon">
                                <div class="fb-like" data-href="{SELFURL}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true">&nbsp;</div>
                                <a href="http://twitter.com/share" class="twitter-share-button">Tweet</a>
                            </div>
                        </div>
                    </div>
                    <!-- END: social_icon -->
                </div>
                <div class="col-xs-24 col-sm-14 col-md-14">
                    <ul class="product-info">
                        <li class="info-title"><h1 itemprop="name">{TITLE}</h1></li>
                        <li class="info-meta text-muted">{DATE_UP} - {NUM_VIEW} {LANG.detail_num_view}</li>
                        <!-- BEGIN: product_code -->
                        <li class="info-code">{LANG.product_code}: <strong>{PRODUCT_CODE}</strong></li>
                        <!-- END: product_code -->
                        <li class="shoe-material-info" style="margin: 8px 0; padding: 8px 12px; background: #f8f9fa; border-left: 3px solid #ff3e3e; border-radius: 4px; list-style: none;">
                            <i class="fa fa-cube" style="color: #ff3e3e; margin-right: 6px;"></i>
                            <strong>Chất liệu giày:</strong> 
                            <span itemprop="material" style="color: #111111; font-weight: 600;">{DATA.shoe_material}</span>
                        </li>
                        <!-- BEGIN: price -->
                        <li class="info-price">
                            {LANG.detail_pro_price}:
                            <!-- BEGIN: discounts -->
                            <span class="money">{PRICE.sale_format} {PRICE.unit}</span> <span class="discounts_money">{PRICE.price_format} {PRICE.unit}</span> <span class="money">{product_discounts} {money_unit}</span>
                            <!-- END: discounts -->
                            <!-- BEGIN: no_discounts -->
                            <span class="money">{PRICE.price_format} {PRICE.unit}</span>
                            <!-- END: no_discounts -->
                        </li>
                        <!-- END: price -->
                        <!-- BEGIN: product_weight -->
                        <li class="info-weight">{LANG.weights}: <strong>{PRODUCT_WEIGHT}</strong>&nbsp<span>{WEIGHT_UNIT}</span></li>
                        <!-- END: product_weight -->
                        <!-- BEGIN: contact -->
                        <li class="info-priceno">{LANG.detail_pro_price}: <span class="money">{LANG.price_contact}</span></li>
                        <!-- END: contact -->
                        <!-- BEGIN: group_detail -->
                        <li class="info-groups">
                            <!-- BEGIN: loop --> <!-- BEGIN: maintitle -->
                            <div class="pull-left">
                                <strong>{MAINTITLE}:</strong>&nbsp;
                            </div> <!-- END: maintitle --> <!-- BEGIN: subtitle -->
                            <ul class="pull-left list-inline" style="padding: 0 10px 0">
                                <!-- BEGIN: loop -->
                                <li>{SUBTITLE.title}</li>
                                <!-- END: loop -->
                            </ul>
                            <div class="clear"></div> <!-- END: subtitle --> <!-- END: loop -->
                        </li>
                        <!-- END: group_detail -->
                        <!-- BEGIN: custom_data -->
                        <div class="info-customs">{CUSTOM_DATA}</div>
                        <!-- END: custom_data -->
                        <!-- BEGIN: hometext -->
                        <li class="info-hometext">
                            <p class="text-justify" itemprop="description">{hometext}</p>
                        </li>
                        <!-- END: hometext -->
                        <!-- BEGIN: promotional -->
                        <li class="info-promotion"><strong>{LANG.detail_promotional}:</strong> {promotional}</li>
                        <!-- END: promotional -->
                        <!-- BEGIN: warranty -->
                        <li class="info-warranty"><strong>{LANG.detail_warranty}:</strong> {warranty}</li>
                        <!-- END: warranty -->
                    </ul>
                    <hr />
                    <!-- BEGIN: gift -->
                    <div class="alert alert-info pro-gift">
                        <div class="pull-left">
                            <em class="fa fa-gift fa-3x">&nbsp;</em>
                        </div>
                        <div class="pull-left">
                            <h4>{gift_content}</h4>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- END: gift -->

                    <!-- [CUSTOM DAY 6] KHAY MA GIAM GIA SAN CO TAI TRANG CHI TIET -->
                    <!-- BEGIN: coupon_tray_detail -->
                    <div class="shoe-coupon-tray" style="margin-top: 10px; margin-bottom: 12px;">
                        <div class="shoe-coupon-tray-title">
                            <i class="fa fa-gift"></i> Mã ưu đãi hiện có (Bấm để sao chép mã):
                        </div>
                        <div class="shoe-coupon-list">
                            <!-- BEGIN: loop -->
                            <div class="shoe-coupon-ticket" onclick="copyShoeCouponDetail('{COUPON_DETAIL.code}', this)" title="{COUPON_DETAIL.title}">
                                <div class="shoe-coupon-info">
                                    <span class="shoe-coupon-code">{COUPON_DETAIL.code}</span>
                                    <span class="shoe-coupon-desc">{COUPON_DETAIL.desc}</span>
                                </div>
                                <span class="shoe-coupon-btn">Sao chép</span>
                            </div>
                            <!-- END: loop -->
                        </div>
                    </div>
                    <script type="text/javascript">
                    function copyShoeCouponDetail(code, el) {
                        if (navigator.clipboard) {
                            navigator.clipboard.writeText(code);
                        } else {
                            var tempInput = document.createElement('input');
                            tempInput.value = code;
                            document.body.appendChild(tempInput);
                            tempInput.select();
                            document.execCommand('copy');
                            document.body.removeChild(tempInput);
                        }
                        var btn = el.querySelector('.shoe-coupon-btn');
                        if (btn) {
                            var oldText = btn.innerText;
                            btn.innerText = 'Đã lưu!';
                            btn.style.backgroundColor = '#28a745';
                            setTimeout(function() {
                                btn.innerText = oldText;
                                btn.style.backgroundColor = '';
                            }, 1500);
                        }
                    }
                    </script>
                    <!-- END: coupon_tray_detail -->

                    <!-- [CUSTOM DAY 4] Nut bat Popup Bang quy doi Size giay -->
                    <div class="size-guide-trigger-wrap">
                        <span class="size-guide-label"><em class="fa fa-check-circle"></em> Chọn đúng kích cỡ chân của bạn:</span>
                        <button type="button" class="btn-open-size-guide" onclick="openShoeSizeModal()">
                            <em class="fa fa-arrows-h"></em> Bảng quy đổi Size giày
                        </button>
                    </div>

                    <!-- BEGIN: group -->
                    <div class="well pro-group-lists">
                        <div class="filter_product">
                            <!-- BEGIN: items -->
                            <div class="row">
                                <!-- BEGIN: header -->
                                <div class="col-xs-8 col-sm-5" style="margin-top: 4px">{HEADER}</div>
                                <!-- END: header -->
                                <div class="col-xs-16 col-sm-19 itemsgroup" data-groupid="{GROUPID}" data-header="{HEADER}">
                                    <!-- BEGIN: loop -->
                                    <label class="label_group <!-- BEGIN: active -->active<!-- END: active -->"> <input type="radio" class="groupid" onclick="check_quantity( $(this) )" name="groupid[{GROUPID}]" value="{GROUP.groupid}"
                                    <!-- BEGIN: checked -->checked="checked" <!-- END: checked -->>{GROUP.title}
                                    </label>
                                    <!-- END: loop -->
                                </div>
                            </div>
                            <!-- END: items -->
                        </div>
                        <span id="group_error">&nbsp;</span>
                    </div>
                    <!-- END: group -->
                    <!-- BEGIN: order_number -->
                    <div class="well order-number">
                        <div class="row">
                            <div class="col-xs-8 col-sm-5">{LANG.detail_pro_number}</div>
                            <div class="col-xs-16 col-sm-19">
                                <input type="number" name="num" value="1" min="1" id="pnum" class="pull-left form-control" style="width: 100px; margin-right: 5px">
                                <!-- BEGIN: product_number -->
                                <span class="help-block pull-left" id="product_number">{LANG.detail_pro_number}: <strong>{PRODUCT_NUMBER}</strong> {pro_unit}
                                </span>
                                <!-- END: product_number -->
                            </div>
                        </div>
                    </div>
                    <!-- END: order_number -->
                    <div class="clearfix"></div>
                    <!-- BEGIN: typepeice -->
                    <table class="table table-striped table-bordered table-hover type-peice">
                        <thead>
                            <tr>
                                <th class="text-right">{LANG.detail_pro_number}</th>
                                <th class="text-left">{LANG.cart_price} ({money_unit})</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: items -->
                            <tr>
                                <td class="text-right">{ITEMS.number_from} -> {ITEMS.number_to}</td>
                                <td class="text-left">{ITEMS.price}</td>
                            </tr>
                            <!-- END: items -->
                        </tbody>
                    </table>
                    <!-- END: typepeice -->
                    <!-- BEGIN: order -->
                    <button class="btn btn-danger btn-order btn-order-cart" data-id="{proid}" onclick="cartorder_detail(this, {POPUP}, 0); return !1;">
                        <i class="fa fa-shopping-cart fa-lg"></i> {LANG.add_cart}
                    </button>
                    <button class="btn btn-success btn-order btn-order-buy" data-id="{proid}" onclick="cartorder_detail(this, {POPUP}, 1); return !1;">
                        <i class="fa fa-paper-plane-o fa-lg"></i> {LANG.buy_now}
                    </button>
                    <!-- END: order -->
                    <!-- BEGIN: product_empty -->
                    <button class="btn btn-danger disabled">{LANG.product_empty}</button>
                    <!-- END: product_empty -->
                </div>
            </div>
        </div>
    </div>
    <!-- BEGIN: product_detail -->
    <!-- BEGIN: tabs -->
    <div role="tabpanel" class="tabs">
        <ul class="nav nav-tabs" role="tablist">
            <!-- BEGIN: tabs_title -->
            <li role="presentation"
                <!-- BEGIN: active -->class="active"<!-- END: active -->> <a href="#{TABS_KEY}-{TABS_ID}" aria-controls="{TABS_KEY}-{TABS_ID}" role="tab" data-toggle="tab"> <!-- BEGIN: icon --> <img src="{TABS_ICON}" /> <!-- END: icon --> <!-- BEGIN: icon_default --> <em class="fa fa-bars">&nbsp;</em> <!-- END: icon_default --> <span>{TABS_TITLE}</span>
            </a>
            </li>
            <!-- END: tabs_title -->
        </ul>
        <div class="tab-content">
            <!-- BEGIN: tabs_content -->
            <div role="tabpanel" class="tab-pane fade <!-- BEGIN: active -->active in<!-- END: active -->" id="{TABS_KEY}-{TABS_ID}">{TABS_CONTENT}</div>
            <!-- END: tabs_content -->
        </div>
    </div>
    <!-- END: tabs -->
    <!-- BEGIN: keywords -->
    <div class="panel panel-default panel-product-keywords">
        <div class="panel-body">
            <div class="keywords">
                <em class="fa fa-tags">&nbsp;</em><strong>{LANG.keywords}: </strong>
                <!-- BEGIN: loop -->
                <a title="{KEYWORD}" href="{LINK_KEYWORDS}" rel="dofollow"><em>{KEYWORD}</em></a>{SLASH}
                <!-- END: loop -->
            </div>
        </div>
    </div>
    <!-- END: keywords -->
    <!-- BEGIN: other -->
    <div class="panel panel-default panel-product-others">
        <div class="panel-heading"><span>{LANG.detail_others}</span></div>
        <div class="panel-body">{OTHER}</div>
    </div>
    <!-- END: other -->
    <!-- BEGIN: other_view -->
    <div class="panel panel-default panel-product-viewed">
        <div class="panel-heading"><span>{LANG.detail_others_view}</span></div>
        <div class="panel-body">{OTHER_VIEW}</div>
    </div>
    <!-- END: other_view -->
    <!-- END: product_detail -->
</div>
<div class="modal fade" id="idmodals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                &nbsp;
            </div>
            <div class="modal-body">
                <p class="text-center">
                    <em class="fa fa-spinner fa-spin fa-3x">&nbsp;</em>
                </p>
            </div>
        </div>
    </div>
</div>

<!-- [CUSTOM DAY 4] MODAL BANG QUY DOI CO CHAN (SIZE GUIDE POPUP) -->
<div id="shoeSizeGuideModal" class="shoe-modal-overlay" onclick="closeShoeSizeModalOutside(event)">
    <div class="shoe-modal-box">
        <div class="shoe-modal-header">
            <h4><em class="fa fa-table"></em> BẢNG QUY ĐỔI KÍCH CỠ GIÀY CHUẨN (SIZE 38 - 43)</h4>
            <button type="button" class="shoe-modal-close" onclick="closeShoeSizeModal()">&times;</button>
        </div>
        <div class="shoe-modal-body">
            <div class="size-calc-box">
                <label for="footLengthInput"><strong>Đo nhanh:</strong> Nhập chiều dài bàn chân của bạn (cm):</label>
                <div class="size-calc-input-group">
                    <input type="number" id="footLengthInput" step="0.1" min="22" max="29" placeholder="Ví dụ: 25.5" oninput="suggestShoeSize(this.value)">
                    <span id="sizeCalcResult" class="size-calc-result">Nhập số đo để gợi ý Size</span>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered table-striped shoe-size-table">
                    <thead>
                        <tr>
                            <th>Size Việt Nam / EU</th>
                            <th>Size US (Nam)</th>
                            <th>Size UK</th>
                            <th>Chiều dài bàn chân (cm)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr data-size="38">
                            <td><strong>38</strong></td>
                            <td>6.0</td>
                            <td>5.5</td>
                            <td>23.5 - 24.0 cm</td>
                        </tr>
                        <tr data-size="39">
                            <td><strong>39</strong></td>
                            <td>6.5</td>
                            <td>6.0</td>
                            <td>24.1 - 24.5 cm</td>
                        </tr>
                        <tr data-size="40">
                            <td><strong>40</strong></td>
                            <td>7.0</td>
                            <td>6.5</td>
                            <td>24.6 - 25.0 cm</td>
                        </tr>
                        <tr data-size="41">
                            <td><strong>41</strong></td>
                            <td>8.0</td>
                            <td>7.5</td>
                            <td>25.1 - 25.5 cm</td>
                        </tr>
                        <tr data-size="42">
                            <td><strong>42</strong></td>
                            <td>8.5</td>
                            <td>8.0</td>
                            <td>25.6 - 26.0 cm</td>
                        </tr>
                        <tr data-size="43">
                            <td><strong>43</strong></td>
                            <td>9.5</td>
                            <td>9.0</td>
                            <td>26.1 - 26.8 cm</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="size-measure-steps">
                <h5><strong>Hướng dẫn 3 bước đo cỡ chân tại nhà:</strong></h5>
                <ul>
                    <li><strong>Bước 1:</strong> Đặt một tờ giấy A4 sát mép tường, đứng thẳng đặt gót chân chạm nhẹ vào tường.</li>
                    <li><strong>Bước 2:</strong> Dùng bút đánh dấu điểm dài nhất của ngón chân lên tờ giấy.</li>
                    <li><strong>Bước 3:</strong> Dùng thước kẻ đo khoảng cách từ mép giấy đến điểm vừa đánh dấu (tính bằng cm) và đối chiếu với bảng trên. <em>(Mẹo: Nếu mu bàn chân dày hoặc bè ngang, hãy cộng thêm 0.5cm hoặc tăng lên 1 Size).</em></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
function openShoeSizeModal() {
    var modal = document.getElementById('shoeSizeGuideModal');
    if (modal) {
        modal.classList.add('active');
        document.body.style.overflow = 'hidden';
    }
}
function closeShoeSizeModal() {
    var modal = document.getElementById('shoeSizeGuideModal');
    if (modal) {
        modal.classList.remove('active');
        document.body.style.overflow = '';
    }
}
function closeShoeSizeModalOutside(event) {
    var modal = document.getElementById('shoeSizeGuideModal');
    if (event.target === modal) {
        closeShoeSizeModal();
    }
}
function suggestShoeSize(cmVal) {
    var cm = parseFloat(cmVal);
    var resEl = document.getElementById('sizeCalcResult');
    var rows = document.querySelectorAll('.shoe-size-table tbody tr');
    rows.forEach(function(r) { r.classList.remove('recommended-row'); });

    if (isNaN(cm) || cm < 23.0 || cm > 27.5) {
        resEl.innerHTML = 'Nhập từ 23.5 đến 26.8 cm';
        resEl.className = 'size-calc-result';
        return;
    }

    var recSize = 38;
    if (cm <= 24.0) recSize = 38;
    else if (cm <= 24.5) recSize = 39;
    else if (cm <= 25.0) recSize = 40;
    else if (cm <= 25.5) recSize = 41;
    else if (cm <= 26.0) recSize = 42;
    else recSize = 43;

    resEl.innerHTML = 'Gợi ý chuẩn: <strong>Size ' + recSize + '</strong>';
    resEl.className = 'size-calc-result matched';

    var activeRow = document.querySelector('.shoe-size-table tbody tr[data-size="' + recSize + '"]');
    if (activeRow) activeRow.classList.add('recommended-row');
}
document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') closeShoeSizeModal();
});
</script>

<!-- BEGIN: allowed_print_js -->
<script type="text/javascript" data-show="after">
    $(function() {
        $('#click_print').click(function(event) {
            var href = $(this).attr("href");
            event.preventDefault();
            nv_open_browse(href, '', 640, 500, 'resizable=no,scrollbars=yes,toolbar=no,location=no,status=no');
            return false;
        });
    });
</script>
<!-- END: allowed_print_js -->
<!-- BEGIN: imagemodal -->
<script type="text/javascript" data-show="after">
    $('.open_modal').click(function(e){
        e.preventDefault();
         $('#idmodals .modal-body').html( '<img src="' + $(this).data('src') + '" alt="" class="img-responsive" />' );
         $('#idmodals').modal('show');
    });
</script>
<!-- END: imagemodal -->
<!-- BEGIN: order_number_limit -->
<script type="text/javascript" data-show="after">
    $('#pnum').attr( 'max', '{PRODUCT_NUMBER}' );
    $('#pnum').change(function(){
        if( intval($(this).val()) > intval($(this).attr('max')) ){
            alert('{LANG.detail_error_number} ' + $(this).attr('max') );
            $(this).val( $(this).attr('max') );
        }
    });
</script>
<!-- END: order_number_limit -->









<script type="text/javascript">
var detail_error_group = '{LANG.detail_error_group}';
function check_quantity(_this) {
    $('input[name="'+_this.attr('name')+'"]').parent().css('border-color', '#ccc');
    if (_this.is(':checked')) {
        _this.parent().css('border-color', 'blue');
    }
    $('#group_error').css( 'display', 'none' );
    <!-- BEGIN: check_price -->
    check_price( '{proid}', '{pro_unit}' );
    <!-- END: check_price -->
    resize_popup();
}
$(document).ready(function() {
    // Nhóm nào chỉ có 1 ô (như Thương hiệu PUMA) thì tự động chọn luôn, nhóm có nhiều ô (Size 38-43) thì để trống bắt khách chọn
    var itemsgroup = $('.itemsgroup');
    itemsgroup.each(function() {
        var item = $(this);
        var radio = $('[type="radio"]', item);
        if (radio.length == 1) {
            radio.prop('checked', true);
            radio.parent().css('border-color', 'blue').addClass('active');
        }
    });
});
</script>












<!-- [CUSTOM DAY 6] RANG BUOC BAT BUOC CHON SIZE GIAY TRUOC KHI THEM VAO GIO -->
<script type="text/javascript">
document.addEventListener('DOMContentLoaded', function() {
    // 1. Khi khách bấm chọn 1 Size -> Xóa cảnh báo viền đỏ ngay lập tức
    document.body.addEventListener('change', function(e) {
        if (e.target.classList.contains('groupid') || (e.target.name && e.target.name.indexOf('groupid') !== -1)) {
            var warningBox = document.querySelector('.pro-group-lists');
            if (warningBox) warningBox.classList.remove('shoe-size-error-highlight');
            var msg = document.getElementById('shoe-size-alert-text');
            if (msg) msg.style.display = 'none';
        }
    });

    // 2. Chặn sự kiện click vào nút Thêm vào giỏ / Mua ngay ở pha Capturing (true) trước khi hàm cartorder_detail() chạy
    document.addEventListener('click', function(e) {
        var btn = e.target.closest('button, a, input[type="button"]');
        if (!btn) return;

        var onclickAttr = btn.getAttribute('onclick') || '';
        var isOrderBtn = onclickAttr.indexOf('cartorder_detail') !== -1 || btn.classList.contains('btn-order');

        if (isOrderBtn) {
            var groupBlocks = document.querySelectorAll('.itemsgroup');
            if (groupBlocks.length === 0) return;

            var allGroupsSelected = true;
            groupBlocks.forEach(function(block) {
                var checkedRadio = block.querySelector('input.groupid:checked');
                if (!checkedRadio) {
                    allGroupsSelected = false;
                }
            });

            if (!allGroupsSelected) {
                e.preventDefault();
                e.stopPropagation();
                e.stopImmediatePropagation();

                var groupContainer = document.querySelector('.pro-group-lists');
                if (groupContainer) {
                    groupContainer.classList.remove('shoe-size-error-highlight');
                    void groupContainer.offsetWidth; // Kích hoạt lại hiệu ứng rung
                    groupContainer.classList.add('shoe-size-error-highlight');

                    var msg = document.getElementById('shoe-size-alert-text');
                    if (!msg) {
                        msg = document.createElement('div');
                        msg.id = 'shoe-size-alert-text';
                        msg.className = 'shoe-size-error-msg';
                        msg.innerHTML = '<i class="fa fa-exclamation-triangle"></i> Vui lòng chọn kích cỡ giày (Size 38 - 43) trước khi thêm vào giỏ hàng!';
                        groupContainer.appendChild(msg);
                    }
                    msg.style.display = 'block';
                    groupContainer.scrollIntoView({ behavior: 'smooth', block: 'center' });
                } else {
                    alert('Vui lòng chọn kích cỡ giày (Size) trước khi đặt mua!');
                }
                return false;
            }
        }
    }, true);
});
</script>

<!-- BEGIN: popup -->
<script type="text/javascript">
$(window).on('load', function() {
    setTimeout(function() {
        resize_popup();
    }, 300);
});
</script>
<!-- END: popup -->
<!-- END: main -->