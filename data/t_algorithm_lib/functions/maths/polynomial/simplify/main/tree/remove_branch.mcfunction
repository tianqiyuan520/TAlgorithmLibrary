##调用 通用化展开 (指数)

scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][4][0]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"power"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 1
# tellraw @a [{"text":"回溯check type"},{"nbt":"polynomial.main.main_tree[-1][4][0]","storage":"t_algorithm_lib:maths","color":"#C579B5"}]

execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"mul"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"power"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 1

# tellraw @a [{"text":"old tree "},{"nbt":"polynomial.main.main_tree[-1][0]","storage":"t_algorithm_lib:maths","color":"#4EC990"}]

scoreboard players set #tal.maths.polynomial.temp.no_mul tal.str_parser 0

execute if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"power"} run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list set value [[]]
execute if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"power"} run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0] set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
execute if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"power"} run scoreboard players set #tal.maths.polynomial.temp.no_mul tal.str_parser 1
##
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][1][0]
execute if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 unless data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list set value [[]]
execute if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 unless data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} run scoreboard players set #tal.maths.polynomial.temp.no_mul tal.str_parser 1

execute if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 unless data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0] set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
##
execute if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/start

execute if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.generalize.unfold.return
# execute if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 run tellraw @a [{"text":"展开后"},{"nbt":"polynomial.generalize.unfold.return","storage":"t_algorithm_lib:maths","color":"#4EC990"}]
# data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list set value [[[[1]],['^'],[[0]]],['*'],[[['x']],['^'],[[0]]]]
##判断是否处理 加减法
scoreboard players set #tal.maths.polynomial.temp.success3 tal.str_parser 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set value ''
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run scoreboard players set #tal.maths.polynomial.temp.success3 tal.str_parser 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.temp.success3 tal.str_parser 1
execute if score #tal.maths.polynomial.temp.success3 tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/add2/start

##根据指针 修改上一级的数据
# tellraw @a [{"text":"新值 "},{"nbt":"polynomial.main.main_tree[-1][0]","storage":"t_algorithm_lib:maths","color":"#4EC990"}]



execute store result score #tal.maths.polynomial.main.index_last tal.str_parser run data get storage t_algorithm_lib:maths polynomial.main.main_tree[-1][2][0]
execute store result score #tal.maths.polynomial.main.index_all tal.str_parser run data get storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0]
scoreboard players set #tal.maths.polynomial.main.index_all_ tal.str_parser 0
execute if score #tal.maths.polynomial.main.tree_len tal.str_parser matches 2.. run function t_algorithm_lib:maths/polynomial/simplify/main/tree/change_last_data


##移除
execute if score #tal.maths.polynomial.main.tree_len tal.str_parser matches 2.. run data remove storage t_algorithm_lib:maths polynomial.main.main_tree[-1]

# tellraw @a [{"text":"new tree "},{"nbt":"polynomial.main.main_tree[-1][0]","storage":"t_algorithm_lib:maths","color":"#DCD079"}]
