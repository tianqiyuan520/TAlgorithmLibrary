##判断主树的个数
execute store result score #tal.maths.derivation.main.count tal.input run data get storage t_algorithm_lib:maths auto_derivation.main_tree
scoreboard players set #tal.maths.derivation.main.is_return tal.input 0
execute if score #tal.maths.derivation.main.count tal.input matches 1 run function t_algorithm_lib:maths/auto_derivation/main/end
execute unless score #tal.maths.derivation.main.count tal.input matches 1 run function t_algorithm_lib:maths/auto_derivation/main/return