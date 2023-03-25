##判断主树的个数
execute store result score #tal.maths.integrate.main.count tal.str_parser run data get storage t_algorithm_lib:maths integrate.main_tree
scoreboard players set #tal.maths.integrate.main.is_return tal.str_parser 0
execute if score #tal.maths.integrate.main.count tal.str_parser matches 1 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/end
execute unless score #tal.maths.integrate.main.count tal.str_parser matches 1 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/return