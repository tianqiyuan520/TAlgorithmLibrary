##获取结果正负 1 * -1
##判断num1=num2

data modify storage t_algorithm_lib:num double_calculation.temp.num_check set from storage t_algorithm_lib:num double_calculation.temp.num1
execute store result score #tal.num.hpc.check tal.str_parser run data modify storage t_algorithm_lib:num double_calculation.temp.num_check set from storage t_algorithm_lib:num double_calculation.temp.num2

##除数 去除左边不必要的0 判断是否全为0

data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set from storage t_algorithm_lib:num double_calculation.temp.num2
function t_algorithm_lib:num/double_calculation/operation/remove_l/loop
execute store result score #tal.num.hpc.check2 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.remove_l.num1





scoreboard players operation #tal.num.hpc.num3_pn tal.str_parser = #tal.num.hpc.num1_pn tal.str_parser
scoreboard players operation #tal.num.hpc.num3_pn tal.str_parser *= #tal.num.hpc.num2_pn tal.str_parser

#除数若为0
execute unless score #tal.num.hpc.check2 tal.str_parser matches 1.. run tellraw @a [{"translate":"arguments.operation.div0","color": "red"}]

#若相等则直接=1
execute if score #tal.num.hpc.check tal.str_parser matches 0 run data modify storage t_algorithm_lib:num double_calculation.temp.result set value [[1],["."],[0]]

execute if score #tal.num.hpc.check tal.str_parser matches 1 if score #tal.num.hpc.check2 tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/division/before


