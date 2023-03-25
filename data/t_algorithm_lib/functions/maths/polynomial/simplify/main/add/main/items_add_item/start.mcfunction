##循环第一项
data modify storage t_algorithm_lib:maths polynomial.items.add.list set from storage t_algorithm_lib:maths polynomial.add.list
data modify storage t_algorithm_lib:maths polynomial.temp.list prepend value []
scoreboard players set #tal.maths.polynomial.temp.loop_end tal.str_parser 0

function t_algorithm_lib:maths/polynomial/simplify/main/add/main/items_add_item/loop_item

##判断是否其中式子含共同项
#添加符号 和第二项
execute if score #tal.maths.polynomial.temp.loop_end tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append from storage t_algorithm_lib:maths polynomial.add.symbol
execute if score #tal.maths.polynomial.temp.loop_end tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.temp.list[0] append value []
execute if score #tal.maths.polynomial.temp.loop_end tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.temp.list[0][-1] append from storage t_algorithm_lib:maths polynomial.add.list2[]




