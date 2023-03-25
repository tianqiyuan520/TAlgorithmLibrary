#BlockEntityTag:{Patterns:[{Pattern:"vhr",Color:15}]}
data modify storage t_algorithm_lib:item_to_json temp.item_Patterns.list set value []
data modify storage t_algorithm_lib:item_to_json temp.item_Patterns.list set from storage t_algorithm_lib:item_to_json temp.item.tag.BlockEntityTag.Patterns
##判断是否为旗帜
execute positioned -29999998 4 20228212 run function t_algorithm_lib:others/json_text/item_content_to_json_text/banner/check_is_banner
##旗帜图案
function t_algorithm_lib:others/json_text/item_content_to_json_text/banner/banner_patterns
