##判断正负

data modify storage t_algorithm_lib:num double_calculation.add.num1 set from storage t_algorithm_lib:num double_calculation.temp.num1
data modify storage t_algorithm_lib:num double_calculation.add.num2 set from storage t_algorithm_lib:num double_calculation.temp.num2

##判断大小
data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.add.num1
data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.add.num2
##进行小数补位
execute unless score #tal.num.hpc.num1_p tal.str_parser = #tal.num.hpc.num2_p tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/complement/point_loop
data modify storage t_algorithm_lib:num double_calculation.add.num1 set from storage t_algorithm_lib:num double_calculation.check.num1
data modify storage t_algorithm_lib:num double_calculation.add.num2 set from storage t_algorithm_lib:num double_calculation.check.num2
function t_algorithm_lib:num/double_calculation/operation/check2/start
##前者大，则作为最终结果的正负来源
execute if score #tal.num.hpc.check_s tal.str_parser matches 1.. run scoreboard players operation #tal.num.hpc.num3_pn tal.str_parser = #tal.num.hpc.num1_pn tal.str_parser
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run scoreboard players operation #tal.num.hpc.num3_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser

execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run scoreboard players operation #tal.num.hpc.num3_p tal.str_parser = #tal.num.hpc.num1_p tal.str_parser
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run scoreboard players operation #tal.num.hpc.num1_p tal.str_parser = #tal.num.hpc.num2_p tal.str_parser
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run scoreboard players operation #tal.num.hpc.num2_p tal.str_parser = #tal.num.hpc.num3_p tal.str_parser
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run data modify storage t_algorithm_lib:num double_calculation.add.num3 set from storage t_algorithm_lib:num double_calculation.add.num1
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run data modify storage t_algorithm_lib:num double_calculation.add.num1 set from storage t_algorithm_lib:num double_calculation.add.num2
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run data modify storage t_algorithm_lib:num double_calculation.add.num2 set from storage t_algorithm_lib:num double_calculation.add.num3


##同号相加
execute if score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser run scoreboard players operation #tal.num.hpc.num3_pn tal.str_parser = #tal.num.hpc.num1_pn tal.str_parser
execute if score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/add/before

##异号则相减
execute unless score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser run data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 set from storage t_algorithm_lib:num double_calculation.add.num1
execute unless score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser run data modify storage t_algorithm_lib:num double_calculation.subtraction.num2 set from storage t_algorithm_lib:num double_calculation.add.num2
execute unless score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/subtraction/before