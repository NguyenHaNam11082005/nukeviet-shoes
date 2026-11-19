<!DOCTYPE html>
    <html lang="{LANG.Content_Language}" xmlns="http://www.w3.org/1999/xhtml" prefix="og: http://ogp.me/ns#">
    <head>
        <title>{THEME_PAGE_TITLE}</title>
        <!-- BEGIN: metatags --><meta {THEME_META_TAGS.name}="{THEME_META_TAGS.value}" content="{THEME_META_TAGS.content}">
        <!-- END: metatags -->
        <link rel="shortcut icon" href="{SITE_FAVICON}">
        <!-- BEGIN: links -->
        <link<!-- BEGIN: attr --> {LINKS.key}<!-- BEGIN: val -->="{LINKS.value}"<!-- END: val --><!-- END: attr -->>
        <!-- END: links -->
        <!-- BEGIN: js -->
        <script<!-- BEGIN: ext --> src="{JS_SRC}"<!-- END: ext -->><!-- BEGIN: int -->{JS_CONTENT}<!-- END: int --></script>
        <!-- END: js -->
        <!-- [CUSTOM DAY 8] Schema Markup ShoeStore -->
        <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "ShoeStore",
            "name": "Shop Giày Chính Hãng",
            "url": "{NV_MY_DOMAIN}/shopgiay/",
            "logo": "{NV_MY_DOMAIN}{LOGO_SRC}",
            "image": "{NV_MY_DOMAIN}{LOGO_SRC}",
            "description": "Chuyên cung cấp giày Sneaker, giày chạy bộ, giày tây chính hãng Nike, Adidas, Puma. Đổi size miễn phí, ưu đãi combo giảm 10% khi mua từ 2 đôi.",
            "priceRange": "500.000đ - 5.000.000đ",
            "address": {
                "@type": "PostalAddress",
                "addressLocality": "Hà Nội",
                "addressCountry": "VN"
            }
        }
        </script>
    </head>
    <body>