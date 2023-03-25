
scoreboard players remove #tal.array.double_to_array.total tal.str_parser 1

##判断
##是否进入下一级
#条件取反
scoreboard players set #tal.array.double_to_array.is_more tal.str_parser 0
##判断角度
execute if score #tal.array.double_to_array.negative tal.str_parser matches 0 positioned ~ ~-1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
#负
execute if score #tal.array.double_to_array.negative tal.str_parser matches 1 positioned ~ ~1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ run function t_algorithm_lib:array/double_to_array/loop/integer/check_up_or_down
execute if score #tal.array.double_to_array.negative tal.str_parser matches 0 if score #tal.array.double_to_array.num tal.str_parser matches ..-1 run scoreboard players set #tal.array.double_to_array.is_more tal.str_parser 1
execute if score #tal.array.double_to_array.negative tal.str_parser matches 1 if score #tal.array.double_to_array.num tal.str_parser matches 1.. run scoreboard players set #tal.array.double_to_array.is_more tal.str_parser 1
#判断是否end
scoreboard players set #tal.array.double_to_array.endI tal.str_parser 0
execute if predicate t_algorithm_lib:matches_zero run scoreboard players set #tal.array.double_to_array.endI tal.str_parser 1
execute if score #tal.array.double_to_array.endI tal.str_parser matches 1 run function t_algorithm_lib:array/double_to_array/loop/integer/end
execute if score #tal.array.double_to_array.is_more tal.str_parser matches 1 if score #tal.array.double_to_array.endI tal.str_parser matches 0 run function t_algorithm_lib:array/double_to_array/loop/integer/add_list
execute if score #tal.array.double_to_array.is_more tal.str_parser matches 1 if score #tal.array.double_to_array.total tal.str_parser matches 1.. if score #tal.array.double_to_array.end tal.str_parser matches 0 run function t_algorithm_lib:array/double_to_array/loop/integer/tp_92
##迭代自己
scoreboard players set #tal.array.double_to_array.continue tal.str_parser 0
execute if score #tal.array.double_to_array.tier tal.str_parser matches 93 if score #tal.array.double_to_array.total tal.str_parser matches 1.. run scoreboard players set #tal.array.double_to_array.continue tal.str_parser 1

execute if score #tal.array.double_to_array.continue tal.str_parser matches 1 if score #tal.array.double_to_array.end tal.str_parser matches 0 run function t_algorithm_lib:array/double_to_array/loop/decimal/add_num

execute if score #tal.array.double_to_array.continue tal.str_parser matches 1 if score #tal.array.double_to_array.negative tal.str_parser matches 0 positioned ~ ~-1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ if score #tal.array.double_to_array.end tal.str_parser matches 0 run function t_algorithm_lib:array/double_to_array/loop/integer/tp_93
#负
execute if score #tal.array.double_to_array.continue tal.str_parser matches 1 if score #tal.array.double_to_array.negative tal.str_parser matches 1 positioned ~ ~1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 ~ if score #tal.array.double_to_array.end tal.str_parser matches 0 run function t_algorithm_lib:array/double_to_array/loop/integer/tp_93
