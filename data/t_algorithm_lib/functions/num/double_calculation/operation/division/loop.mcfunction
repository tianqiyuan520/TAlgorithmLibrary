##判断是否需结束
execute unless data storage t_algorithm_lib:num double_calculation.division.num1_[0] unless data storage t_algorithm_lib:num double_calculation.division.num1[0] run scoreboard players set #tal.num.hpc.division.end tal.str_parser 1

##判断精度
##只精确到小数后 #tal.num.hpc.division_precision tal.str_parser 位
execute store result score #tal.num.hpc.list_count tal.str_parser run data get storage t_algorithm_lib:num double_calculation.division_result
scoreboard players operation #tal.num.hpc.list_count tal.str_parser -= #tal.num.hpc.division.num_pr tal.str_parser
execute if score #tal.num.hpc.list_count tal.str_parser > #tal.num.hpc.division_precision tal.str_parser run scoreboard players set #tal.num.hpc.division.end tal.str_parser 1

##
execute if score #tal.num.hpc.division.end tal.str_parser matches 0 run function t_algorithm_lib:num/double_calculation/operation/division/first_check