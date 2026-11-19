<noscript>
        <div class="alert alert-danger">{LANG.nojs}</div>
    </noscript>
    <header id="top">
        <div class="site-banner" style="background-image: url('{BANNER_SRC}');"></div>
        <div class="section-header-bar">
            <div class="wraper">
                <nav class="header-nav">
                    <div class="header-nav-inner">
                        <div class="contactDefault">
                            [CONTACT_DEFAULT]
                        </div>
                        <div class="social-icons">
                            [SOCIAL_ICONS]
                        </div>
                        <div class="personalArea">
                            [PERSONALAREA]
                        </div>
                    </div>
                    <div id="tip" data-content="">
                        <div class="bg"></div>
                    </div>
                </nav>
            </div>
        </div>
        <div class="section-header">
            <div class="wraper">
                <div id="header">
                    <div class="logo">
                        <a title="{SITE_NAME}" href="{THEME_SITE_HREF}"><img src="{LOGO_SRC}" alt="{SITE_NAME}"></a>
                        <!-- BEGIN: site_name_h1 -->
                        <h1 class="sr-only">{SITE_NAME}</h1>
                        <!-- END: site_name_h1 -->
                        <!-- BEGIN: site_name_span -->
                        <span class="sr-only">{SITE_NAME}</span>
                        <!-- END: site_name_span -->
                        <span class="site_description">{SITE_DESCRIPTION}</span>
                    </div>
                    <div class="right-ads">
                        [HEAD_RIGHT]
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="section-nav">
        <div class="wraper">
            <nav class="second-nav" id="menusite">
                <div class="container">
                    <div class="row">
                        <div class="bg box-shadow">
                            [MENU_SITE]
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>

<!-- Khối cam kết dịch vụ Shop Giày -->
<div class="shoe-trust-bar" style="background: #f0f0f0; padding: 10px 0; border-bottom: 1px solid #ddd; font-size: 13px; font-weight: 600; text-align: center;">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-md-3">
                <i class="fa fa-check-circle text-danger"></i> 100% Giày Chính Hãng
            </div>
            <div class="col-xs-6 col-md-3">
                <i class="fa fa-truck text-danger"></i> Giao Hàng Toàn Quốc COD
            </div>
            <div class="col-xs-6 col-md-3">
                <i class="fa fa-exchange text-danger"></i> Đổi Size Miễn Phí 7 Ngày
            </div>
            <div class="col-xs-6 col-md-3">
                <i class="fa fa-tag text-danger"></i> Mua từ 2 đôi Giảm thêm 10%
            </div>
        </div>
    </div>
</div>

    <div class="section-body">
        <div class="wraper">
            <section>
                <div class="container" id="body">
                    <nav class="third-nav" aria-label="Breadcrumb">
                        <div class="row">
                            <div class="bg">
                            <div class="clearfix">
                                <div class="col-xs-24 col-sm-18 col-md-18">
                                    <!-- BEGIN: breadcrumbs -->
                                    <div class="breadcrumbs-wrap">
                                        <div class="display">
                                            <a class="show-subs-breadcrumbs hidden" href="#breadcrumbs" title="Mở rộng điều hướng" aria-label="Mở rộng điều hướng" onclick="showSubBreadcrumbs(this, event);"><em class="fa fa-lg fa-angle-right"></em></a>
                                            <ul class="breadcrumbs list-none"></ul>
                                        </div>
                                        <ul class="subs-breadcrumbs"></ul>
                                        <ul class="temp-breadcrumbs hidden" itemscope itemtype="https://schema.org/BreadcrumbList">
                                            <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"><a href="{THEME_SITE_HREF}" itemprop="item" title="{LANG.Home}"><span itemprop="name">{LANG.Home}</span></a><i class="hidden" itemprop="position" content="1"></i></li>
                                            <!-- BEGIN: loop --><li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem"><a href="{BREADCRUMBS.link}" itemprop="item" title="{BREADCRUMBS.title}"><span class="txt" itemprop="name">{BREADCRUMBS.title}</span></a><i class="hidden" itemprop="position" content="{BREADCRUMBS.position}"></i></li><!-- END: loop -->
                                        </ul>
                                    </div>
                                    <!-- END: breadcrumbs -->
                                    <!-- BEGIN: currenttime --><span class="current-time">{NV_CURRENTTIME}</span><!-- END: currenttime -->
                                </div>
                                <div class="headerSearch col-xs-24 col-sm-6 col-md-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control" maxlength="{NV_MAX_SEARCH_LENGTH}" placeholder="{LANG.search}..." aria-label="{LANG.search}"><span class="input-group-btn"><button type="button" class="btn btn-info" data-url="{THEME_SEARCH_URL}" data-minlength="{NV_MIN_SEARCH_LENGTH}" data-click="y" title="{LANG.search}" aria-label="{LANG.search}"><em class="fa fa-search fa-lg"></em></button></span>
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </nav>
                    [THEME_ERROR_INFO]