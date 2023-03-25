##判断指针，替换数据
execute if score #tal.maths.polynomial.main.index_all_ tal.str_parser = #tal.maths.polynomial.main.index_last tal.str_parser run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0][0] set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
##判断类型替换数据
##polynomial.main.main_tree[-1][0]是0,类型为mul则 源数据=0 ,源数据溯回=1 
##polynomial.main.main_tree[-1][0]是1,类型为mul则 源数据移除
scoreboard players set #tal.maths.polynomial.main.is_zero tal.str_parser 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][0]
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set from storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0][1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"*"} if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:[[0]]} run function t_algorithm_lib:maths/polynomial/simplify/main/tree/change_last_data/mul_0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
execute if score #tal.maths.polynomial.main.is_zero tal.str_parser matches 0 if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"*"} if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:[[0]]} run function t_algorithm_lib:maths/polynomial/simplify/main/tree/change_last_data/mul_0
# data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set from storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0][1][-1]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:[[[0]]]} if score #tal.maths.polynomial.main.index_all_ tal.str_parser = #tal.maths.polynomial.main.index_last tal.str_parser unless score #tal.maths.polynomial.main.index_last tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/change_last_data/add_0
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:[[0]]} if score #tal.maths.polynomial.main.index_all_ tal.str_parser = #tal.maths.polynomial.main.index_last tal.str_parser unless score #tal.maths.polynomial.main.index_last tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/change_last_data/add_0

##
data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0] append from storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0][0]
data remove storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0][0]

scoreboard players add #tal.maths.polynomial.main.index_all_ tal.str_parser 1
scoreboard players remove #tal.maths.polynomial.main.index_all tal.str_parser 1
execute if score #tal.maths.polynomial.main.index_all tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/tree/change_last_data

