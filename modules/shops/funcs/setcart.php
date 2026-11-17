<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2017 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 04/18/2017 09:47
 */

if (!defined('NV_IS_MOD_SHOPS')) {
    die('Stop!!!');
}
if (!defined('NV_IS_AJAX')) {
    die('Wrong URL');
}

if (!isset($_SESSION[$module_data . '_cart'])) {
    $_SESSION[$module_data . '_cart'] = [];
}

$id = $nv_Request->get_int('id', 'post,get', 1);
$group = $nv_Request->get_string('group', 'post,get', '');
$num = $nv_Request->get_int('num', 'post,get', 1);
$ac = $nv_Request->get_string('ac', 'post,get', 0);
$contents_msg = "";

// [CUSTOM DAY 6] Ràng buộc Backend PHP: Kiểm tra bắt buộc phải chọn Size giày nếu sản phẩm có phân loại Size
$has_missing_size = false;
if ($ac == 0 && $id > 0 && empty(trim((string)$group, ','))) {
    try {
        $check_has_size = $db->query("SELECT COUNT(*) FROM " . $db_config['prefix'] . "_" . $module_data . "_group_items WHERE pro_id = " . (int)$id)->fetchColumn();
        if ((int)$check_has_size > 0) {
            $has_missing_size = true;
        }
    } catch (Exception $e) {
        // Fallback an toàn trên PHP 8.2 nếu tên bảng phụ khác nhau giữa các bản build
        $has_missing_size = false;
    }
}

if ($has_missing_size) {
    $contents_msg = 'ERR_Vui lòng chọn kích cỡ giày (Size) trước khi thêm vào giỏ hàng!';
} elseif (!is_numeric($num) or $num < 0) {
    $contents_msg = 'ERR_' . $lang_module['cart_set_err'];
} else {
    if ($ac == 0) {
        if ($id > 0) {
            $result = $db->query("SELECT * FROM " . $db_config['prefix'] . "_" . $module_data . "_rows WHERE id = " . $id);
            $data_content = $result->fetch();

            if ($num > $data_content['product_number'] and empty($pro_config['active_order_number'])) {
                $contents_msg = 'ERR_' . $lang_module['cart_set_err_num'];
            } else {
                $update_cart = true;
                if (!isset($_SESSION[$module_data . '_cart'][$id . '_' . $group])) {
                    $_SESSION[$module_data . '_cart'][$id . '_' . $group] = array(
                        'num' => $num,
                        'order' => 0,
                        'price' => $data_content['product_price'],
                        'money_unit' => $data_content['money_unit'],
                        'discount_id' => $data_content['discount_id'],
                        'store' => $data_content['product_number'],
                        'group' => $group,
                        'weight' => $data_content['product_weight'],
                        'weight_unit' => $data_content['weight_unit']
                    );
                } else {
                    if (($_SESSION[$module_data . '_cart'][$id . '_' . $group]['num'] + $num) > $data_content['product_number'] and empty($pro_config['active_order_number'])) {
                        $contents_msg = 'ERR_' . $lang_module['cart_set_err_num'] . ': ' . $data_content['product_number'];
                        $update_cart = false;
                    } else {
                        $_SESSION[$module_data . '_cart'][$id . '_' . $group]['num'] = $_SESSION[$module_data . '_cart'][$id . '_' . $group]['num'] + $num;
                    }
                }
                if ($update_cart) {
                    $title = str_replace("_", "#@#", $data_content[NV_LANG_DATA . '_title']);
                    $contents = sprintf($lang_module['set_cart_success'], $title);
                    $contents_msg = 'OK_' . $contents;
                }
            }
        }
    } else {
        if ($id > 0) {
            $result = $db->query("SELECT * FROM " . $db_config['prefix'] . "_" . $module_data . "_rows WHERE id = " . $id);
            $data_content = $result->fetch();

            if ($num > $data_content['product_number'] and empty($pro_config['active_order_number'])) {
                $contents_msg = 'ERR_' . $lang_module['cart_set_err_num'] . ': ' . $data_content['product_number'];
            } else {
                if (isset($_SESSION[$module_data . '_cart'][$id . '_' . $group])) {
                    $_SESSION[$module_data . '_cart'][$id . '_' . $group]['num'] = $num;
                }
                $contents_msg = 'OK_' . $lang_module['cart_set_ok'] . $num;
            }
        }
    }
}

include NV_ROOTDIR . '/includes/header.php';
echo nv_unhtmlspecialchars($contents_msg);
include NV_ROOTDIR . '/includes/footer.php';