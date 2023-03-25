##判断该数据是否为 + - * / ^

scoreboard players set #tal.maths.polynomial.temp.symbol_ tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.symbol2 tal.str_parser 0
# execute unless data storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][1] run tellraw @a [{"text":"当前连接符2 "},{"nbt":"polynomial.main.main_tree[-1][0][0][1]","storage":"t_algorithm_lib:maths","color":"#DCD079"}]
execute unless data storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][1] run scoreboard players set #tal.maths.polynomial.temp.symbol2 tal.str_parser 1
execute unless data storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][1] run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][0]

data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][1][0]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"add"} run data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.this_data[0][1][0]
# tellraw @a [{"text":"当前连接符 "},{"nbt":"polynomial.main.main_tree[-1][0][1]","storage":"t_algorithm_lib:maths","color":"#DCD079"}]


execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} run scoreboard players set #tal.maths.polynomial.temp.symbol_ tal.str_parser 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"/"} run scoreboard players set #tal.maths.polynomial.temp.symbol_ tal.str_parser 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"^"} run scoreboard players set #tal.maths.polynomial.temp.symbol_ tal.str_parser 2
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run scoreboard players set #tal.maths.polynomial.temp.symbol_ tal.str_parser 3
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.temp.symbol_ tal.str_parser 3

data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.this_data[0][1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run scoreboard players set #tal.maths.polynomial.temp.symbol_ tal.str_parser 3
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.temp.symbol_ tal.str_parser 3

#调用
execute if score #tal.maths.polynomial.temp.symbol_ tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/main/add_tree_branches/1
execute if score #tal.maths.polynomial.temp.symbol_ tal.str_parser matches 2 if score #tal.maths.polynomial.main.index tal.str_parser matches 2 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/main/add_tree_branches/2
execute if score #tal.maths.polynomial.temp.symbol_ tal.str_parser matches 2 if score #tal.maths.polynomial.main.index tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/main/add_tree_branches/power_2
execute if score #tal.maths.polynomial.temp.symbol_ tal.str_parser matches 3 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/main/add_tree_branches/3