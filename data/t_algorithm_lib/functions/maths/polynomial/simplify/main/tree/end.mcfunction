scoreboard players set #tal.maths.polynomial.main.tree_end tal.str_parser 1
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set from storage t_algorithm_lib:maths polynomial.main.main_tree[0][4][0]

# 处理 [[[0]]]
# data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:[[[0]]]} run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set value [[0]]

#尝试展开
execute unless data storage t_algorithm_lib:maths polynomial.temp.list_check{char:[[[0]]]} run function t_algorithm_lib:maths/polynomial/simplify/main/tree/unfold/start

tellraw @a [{"text":"多项式化简结束 \n结果:"},{"nbt":"polynomial.main.main_tree[-1][0]","storage":"t_algorithm_lib:maths","color":"#DCD079"}]

