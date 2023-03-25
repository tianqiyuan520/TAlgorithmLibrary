##底数添加


##判断是否需要添加
#判断个数
scoreboard players set #tal.maths.polynomial.temp.num2 tal.str_parser 0
execute store result score #tal.maths.polynomial.total.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][0]
execute if score #tal.maths.polynomial.total.num tal.str_parser matches 4.. if score #tal.maths.polynomial.num2 tal.str_parser matches 0..1 run scoreboard players set #tal.maths.polynomial.temp.num2 tal.str_parser 1
execute if score #tal.maths.polynomial.temp.num2 tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/tree/main/add_tree_branches/power_3
##判断指针的添加
scoreboard players set #tal.maths.polynomial.temp.num3 tal.str_parser 0

execute store result score #tal.maths.polynomial.total.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0][0][1][0]
execute if score #tal.maths.polynomial.total.num tal.str_parser matches 3.. if score #tal.maths.polynomial.num2 tal.str_parser matches 0..1 if score #tal.maths.polynomial.temp.num2 tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.num3 tal.str_parser 1
# execute if score #tal.maths.polynomial.temp.num3 tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][1][0] set value 0
execute if score #tal.maths.polynomial.temp.num3 tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][0]
execute if score #tal.maths.polynomial.temp.num3 tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0][-1]
