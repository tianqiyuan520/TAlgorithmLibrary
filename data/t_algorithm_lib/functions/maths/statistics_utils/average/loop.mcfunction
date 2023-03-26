scoreboard players set #tal.maths.statistics_utils.result tal.str_parser 0
execute store result score #tal.maths.statistics_utils.num tal.str_parser run data get storage t_algorithm_lib:maths statistics_utils.average.list[0] 1000
execute store result score #tal.maths.statistics_utils.num2 tal.str_parser run data get storage t_algorithm_lib:maths statistics_utils.average.list2[0] 10

scoreboard players operation #tal.maths.statistics_utils.weight tal.str_parser += #tal.maths.statistics_utils.num2 tal.str_parser

scoreboard players operation #tal.maths.statistics_utils.num tal.str_parser *= #tal.maths.statistics_utils.num2 tal.str_parser
scoreboard players operation #tal.maths.statistics_utils.result tal.str_parser += #tal.maths.statistics_utils.num tal.str_parser


data remove storage t_algorithm_lib:maths statistics_utils.average.list[0]
data remove storage t_algorithm_lib:maths statistics_utils.average.list2[0]
scoreboard players remove #tal.maths.statistics_utils.num tal.str_parser 1
execute if score #tal.maths.statistics_utils.num tal.str_parser matches 1.. run function t_algorithm_lib:maths/statistics_utils/average/loop