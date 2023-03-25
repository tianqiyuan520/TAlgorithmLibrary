##先分离 +-左右
##
#e.g. [['x'],['^'],[2],['*'],[3],['+'],['x']] -> [ [['x'],['^'],[2],['*'],[3]],[['+']],[['x']] ]
data modify storage t_algorithm_lib:maths polynomial.temp.data set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
scoreboard players set #tal.maths.polynomial.time tal.str_parser 999999
scoreboard players set #tal.maths.polynomial.only tal.str_parser 1
function t_algorithm_lib:maths/polynomial/simplify/separate/symbol/start
execute store result score #tal.maths.polynomial.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.per
execute store result score #tal.maths.polynomial.main.tree_len tal.str_parser run data get storage t_algorithm_lib:maths polynomial.main.main_tree
execute if score #tal.maths.polynomial.main.tree_len tal.str_parser matches 1 if score #tal.maths.polynomial.num tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][4][0] set value "mul"
##各项分离通用化
data modify storage t_algorithm_lib:maths polynomial.main.temp.data set from storage t_algorithm_lib:maths polynomial.temp.data2
data modify storage t_algorithm_lib:maths polynomial.main.temp.data2 set value []
function t_algorithm_lib:maths/polynomial/simplify/main/tree/general_s/loop

data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.temp.data2

##处理+ -
##临时数字 处理 多项式+-数字
data modify storage t_algorithm_lib:maths polynomial.temp.list set from storage t_algorithm_lib:maths polynomial.main.temp.data2
scoreboard players set #tal.maths.polynomial.add.num tal.str_parser 0
###tal.maths.polynomial.total.list_count获取循环数
execute store result score #tal.maths.polynomial.total.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list
scoreboard players set #tal.2 tal.str_parser 2
scoreboard players operation #tal.maths.polynomial.total.list_count tal.str_parser /= #tal.2 tal.str_parser

# tellraw @a [{"text":"tree "},{"nbt":"polynomial.main.main_tree[-1]","storage":"t_algorithm_lib:maths","color":"#DCD079"}]
#单项判断
scoreboard players set #tal.maths.polynomial.is_simple tal.str_parser 0

function t_algorithm_lib:maths/polynomial/simplify/main/add/start

data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.temp.list[0]

execute if score #tal.maths.polynomial.main.tree_len tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][1][0]
execute unless data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} unless data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} if score #tal.maths.polynomial.main.tree_len tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][4][0] set value "mul"

# tellraw @a [{"text":"new tree "},{"nbt":"polynomial.main.main_tree[-1]","storage":"t_algorithm_lib:maths","color":"#DCD079"}]
