##纯 项+项
##双循环判断公因式
##一般地, 第一项内部可能数量>=1 , 第二项内部数量=1
##[[["a"],["^"],[ ["a"],["+"],["c"]  ]] , ["*"],[["x"],["^"],[ ["a"],["+"],["c"]  ]],...]


# tellraw @a [{"text":"两者相+/- 1 "},{"nbt":"polynomial.temp.list[0]","storage":"t_algorithm_lib:maths","color":"#DCD079"},{"text":"\n"},{"text":"2 "},{"nbt":"polynomial.temp.list[2]","storage":"t_algorithm_lib:maths","color":"#DCD079"}]

##第一项
data modify storage t_algorithm_lib:maths polynomial.add.list set from storage t_algorithm_lib:maths polynomial.temp.list[0]
#符号
data modify storage t_algorithm_lib:maths polynomial.add.symbol set from storage t_algorithm_lib:maths polynomial.temp.list[1]
##第二项
data modify storage t_algorithm_lib:maths polynomial.add.list2 set from storage t_algorithm_lib:maths polynomial.temp.list[2]
#
data remove storage t_algorithm_lib:maths polynomial.temp.list[0]
data remove storage t_algorithm_lib:maths polynomial.temp.list[0]
data remove storage t_algorithm_lib:maths polynomial.temp.list[0]
scoreboard players set #tal.maths.polynomial.temp.check_end tal.str_parser 0

#判断 第一项 是否含加减法
scoreboard players set #tal.maths.polynomial.temp.check_symbol_ tal.str_parser 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.add.list[1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run scoreboard players set #tal.maths.polynomial.temp.check_symbol_ tal.str_parser 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.temp.check_symbol_ tal.str_parser 1
#


execute if score #tal.maths.polynomial.temp.check_symbol_ tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item_add_item
execute if score #tal.maths.polynomial.temp.check_symbol_ tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/items_add_item/start