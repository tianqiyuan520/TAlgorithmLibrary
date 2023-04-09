##主体

##获取该指针对应的数据
##根据数据，添加新的数
##乘法，指数
##获取 对应数据
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
scoreboard players operation #tal.array.get_element_by_index.index tal.input = #tal.maths.polynomial.main.index tal.input
function t_algorithm_lib:array/get_element_by_index/start
data modify storage t_algorithm_lib:maths polynomial.main.this_data set from storage t_algorithm_lib:array get_element_by_index.return
# tellraw @a [{"text":"当前数据 "},{"nbt":"polynomial.main.this_data","storage":"t_algorithm_lib:maths","color":"#DCD079"}]
# tellraw @a [{"text":"当前数据对应的树 "},{"nbt":"polynomial.main.main_tree[-1]","storage":"t_algorithm_lib:maths","color":"#569CCA"}]
# tellraw @a [{"text":"所有树 "},{"nbt":"polynomial.main.main_tree","storage":"t_algorithm_lib:maths","color":"#3F9CD6"}]


scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][4][0]

##判断该数据是否为 + - * / ^
scoreboard players set #tal.maths.polynomial.temp.symbol tal.input 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.this_data[0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"add"} run data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.this_data[0][0]

execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run scoreboard players set #tal.maths.polynomial.temp.symbol tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players set #tal.maths.polynomial.temp.symbol tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} run scoreboard players set #tal.maths.polynomial.temp.symbol tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"/"} run scoreboard players set #tal.maths.polynomial.temp.symbol tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"^"} run scoreboard players set #tal.maths.polynomial.temp.symbol tal.input 1

##非 符号，则判断 该如何新建树 
execute if score #tal.maths.polynomial.temp.symbol tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/main/add_tree_branches/start