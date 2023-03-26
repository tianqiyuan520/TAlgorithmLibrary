

execute if score #tal.maths.statistics_utils.check tal.str_parser matches 0 if score #tal.maths.statistics_utils.index tal.str_parser matches 1 run function t_algorithm_lib:maths/statistics_utils/median/even
execute if score #tal.maths.statistics_utils.check tal.str_parser matches 1 if score #tal.maths.statistics_utils.index tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths statistics_utils.median.result set from storage t_algorithm_lib:maths statistics_utils.median.list[0]




data remove storage t_algorithm_lib:maths statistics_utils.median.list[0]
scoreboard players remove #tal.maths.statistics_utils.index tal.str_parser 1
execute if score #tal.maths.statistics_utils.index tal.str_parser matches 1.. run function t_algorithm_lib:maths/statistics_utils/median/loop