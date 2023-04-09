##判断主树的个数
execute store result score #tal.maths.integrate.main.count tal.input run data get storage t_algorithm_lib:maths integrate.main_tree
scoreboard players set #tal.maths.integrate.main.is_return tal.input 0
execute if score #tal.maths.integrate.main.count tal.input matches 1 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/end
execute unless score #tal.maths.integrate.main.count tal.input matches 1 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/return