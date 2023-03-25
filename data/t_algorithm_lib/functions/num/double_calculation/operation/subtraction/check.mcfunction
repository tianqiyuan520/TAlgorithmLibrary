##判断正负，且较大的数作为被减数
data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 set from storage t_algorithm_lib:num double_calculation.temp.num1
data modify storage t_algorithm_lib:num double_calculation.subtraction.num2 set from storage t_algorithm_lib:num double_calculation.temp.num2

##判断大小
data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.subtraction.num1
data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.subtraction.num2
##进行小数补位
execute unless score #tal.num.hpc.num1_p tal.str_parser = #tal.num.hpc.num2_p tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/complement/point_loop
data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 set from storage t_algorithm_lib:num double_calculation.check.num1
data modify storage t_algorithm_lib:num double_calculation.subtraction.num2 set from storage t_algorithm_lib:num double_calculation.check.num2
function t_algorithm_lib:num/double_calculation/operation/check2/start

##前者大，作为最终结果的正负来源 则作为被减数 
execute if score #tal.num.hpc.num1_pn tal.str_parser matches 1 if score #tal.num.hpc.num2_pn tal.str_parser matches 1 if score #tal.num.hpc.check_s tal.str_parser matches 1.. run scoreboard players set #tal.num.hpc.num3_pn tal.str_parser 1
execute if score #tal.num.hpc.num1_pn tal.str_parser matches 1 if score #tal.num.hpc.num2_pn tal.str_parser matches 1 if score #tal.num.hpc.check_s tal.str_parser matches ..0 run scoreboard players set #tal.num.hpc.num3_pn tal.str_parser -1

execute if score #tal.num.hpc.num1_pn tal.str_parser matches -1 if score #tal.num.hpc.num2_pn tal.str_parser matches -1 if score #tal.num.hpc.check_s tal.str_parser matches 1.. run scoreboard players set #tal.num.hpc.num3_pn tal.str_parser -1
execute if score #tal.num.hpc.num1_pn tal.str_parser matches -1 if score #tal.num.hpc.num2_pn tal.str_parser matches -1 if score #tal.num.hpc.check_s tal.str_parser matches ..0 run scoreboard players set #tal.num.hpc.num3_pn tal.str_parser 1




execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run scoreboard players operation #tal.num.hpc.num3_p tal.str_parser = #tal.num.hpc.num1_p tal.str_parser
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run scoreboard players operation #tal.num.hpc.num1_p tal.str_parser = #tal.num.hpc.num2_p tal.str_parser
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run scoreboard players operation #tal.num.hpc.num2_p tal.str_parser = #tal.num.hpc.num3_p tal.str_parser
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run data modify storage t_algorithm_lib:num double_calculation.subtraction.num3 set from storage t_algorithm_lib:num double_calculation.subtraction.num1
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 set from storage t_algorithm_lib:num double_calculation.subtraction.num2
execute if score #tal.num.hpc.check_s tal.str_parser matches ..0 run data modify storage t_algorithm_lib:num double_calculation.subtraction.num2 set from storage t_algorithm_lib:num double_calculation.subtraction.num3

##同号相减
execute if score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/subtraction/before

##异号则相加
execute unless score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser if score #tal.num.hpc.num1_pn tal.str_parser matches 1 if score #tal.num.hpc.num2_pn tal.str_parser matches -1 run scoreboard players set #tal.num.hpc.num3_pn tal.str_parser 1
execute unless score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser if score #tal.num.hpc.num1_pn tal.str_parser matches -1 if score #tal.num.hpc.num2_pn tal.str_parser matches 1 run scoreboard players set #tal.num.hpc.num3_pn tal.str_parser -1
execute unless score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser run data modify storage t_algorithm_lib:num double_calculation.add.num1 set from storage t_algorithm_lib:num double_calculation.subtraction.num1
execute unless score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser run data modify storage t_algorithm_lib:num double_calculation.add.num2 set from storage t_algorithm_lib:num double_calculation.subtraction.num2
execute unless score #tal.num.hpc.num1_pn tal.str_parser = #tal.num.hpc.num2_pn tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/add/before

