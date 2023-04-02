execute store result score #tal.maths.statistics_utils.num tal.input run data get storage t_algorithm_lib:maths statistics_utils.median.list[0] 1000
execute store result score #tal.maths.statistics_utils.num2 tal.input run data get storage t_algorithm_lib:maths statistics_utils.median.list[1] 1000
scoreboard players operation #tal.maths.statistics_utils.num tal.input += #tal.maths.statistics_utils.num2 tal.input
scoreboard players operation #tal.maths.statistics_utils.num tal.input /= #2 tal.input
execute store result storage t_algorithm_lib:maths statistics_utils.median.result double 0.001 run scoreboard players operation #tal.maths.statistics_utils.num tal.input /= #2 tal.input
