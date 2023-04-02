###判断该值是否小于0
##[自定义]输入数字
# data modify storage t_algorithm_lib:num is_down_zero.input set value 1.5d
function t_algorithm_lib:num/double_compare/init
##返回结果
scoreboard players set #tal.num.is_down_zero.result tal.input 0
##返回结果 bool类型
data modify storage t_algorithm_lib:num is_down_zero.result set value 0b
##转化为double类型
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1d]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:num is_down_zero.input
execute if score #tal.str.elements_type_check tal.input matches 0 store result storage t_algorithm_lib:num is_down_zero.input double 1.0 run data get storage t_algorithm_lib:num is_down_zero.input
##
data modify entity 00000000-0000-1d63-0000-000800000001 Pos[1] set from storage t_algorithm_lib:num is_down_zero.input
execute as 00000000-0000-1d63-0000-000800000001 at @s if predicate t_algorithm_lib:down_zero run scoreboard players set #tal.num.is_down_zero.result tal.input 1
execute if score #tal.num.is_down_zero.result tal.input matches 1 run data modify storage t_algorithm_lib:num is_down_zero.result set value 1b