##第2种 指数添加 若为1则不添加

# tellraw @a [{"text":"5555 "},{"nbt":"polynomial.main.this_data","storage":"t_algorithm_lib:maths","color":"#DCD079"}]
# tellraw @a [{"text":"符号 "},{"nbt":"polynomial.main.this_data[1][0]","storage":"t_algorithm_lib:maths","color":"#DCD079"}]
# tellraw @a [{"text":"符号2 "},{"nbt":"polynomial.main.this_data[0][1][0]","storage":"t_algorithm_lib:maths","color":"#DCD079"}]

data modify storage t_algorithm_lib:maths polynomial.main.main_tree append value [[],[0],[0],[0],['mul']]
data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.this_data[0]
##判断
# data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.this_data[1][0]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.this_data
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"/"} run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.this_data

# data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.this_data[0][1][0]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"^"} run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.this_data[0]
execute if data storage t_algorithm_lib:maths polynomial.main.this_data[1][0] run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.this_data
#
execute unless data storage t_algorithm_lib:maths polynomial.main.this_data[1][0] run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.this_data[0]
#
execute store result storage t_algorithm_lib:maths polynomial.main.main_tree[-1][2][0] int 1 run scoreboard players get #tal.maths.polynomial.main.index tal.input
