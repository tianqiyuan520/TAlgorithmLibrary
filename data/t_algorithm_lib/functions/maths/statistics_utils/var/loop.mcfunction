scoreboard players set #tal.maths.statistics_utils.result tal.input 0
execute store result score #tal.maths.statistics_utils.num tal.input run data get storage t_algorithm_lib:maths statistics_utils.var.list[0] 100
execute store result score #tal.maths.statistics_utils.num2 tal.input run data get storage t_algorithm_lib:maths statistics_utils.var.mean_num 100


scoreboard players operation #tal.maths.statistics_utils.num tal.input -= #tal.maths.statistics_utils.num2 tal.input
scoreboard players operation #tal.maths.statistics_utils.num tal.input *= #tal.maths.statistics_utils.num tal.input


scoreboard players operation #tal.maths.statistics_utils.result tal.input += #tal.maths.statistics_utils.num tal.input


data remove storage t_algorithm_lib:maths statistics_utils.var.list[0]
scoreboard players remove #tal.maths.statistics_utils.num tal.input 1
execute if score #tal.maths.statistics_utils.num tal.input matches 1.. run function t_algorithm_lib:maths/statistics_utils/var/loop