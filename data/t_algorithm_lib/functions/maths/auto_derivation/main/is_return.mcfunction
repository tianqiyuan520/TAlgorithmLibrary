##判断主树的个数
execute store result score #tal.maths.derivation.main.count tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.main_tree
scoreboard players set #tal.maths.derivation.main.is_return tal.str_parser 0
execute if score #tal.maths.derivation.main.count tal.str_parser matches 1 run function t_algorithm_lib:maths/auto_derivation/main/end
execute unless score #tal.maths.derivation.main.count tal.str_parser matches 1 run function t_algorithm_lib:maths/auto_derivation/main/return