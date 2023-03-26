###计算正整数的阶乘

##[自定义输入] 正整数数字
# data modify storage t_algorithm_lib:num factorial_high.input.num set value 1.0d
##
scoreboard players set #tal.num.factorial_high.num tal.str_parser 2
execute store result score #tal.num.factorial_high.max tal.str_parser run data get storage t_algorithm_lib:num factorial_high.input.num

##返回结果
data modify storage t_algorithm_lib:num factorial_high.result set value 0.0d

execute if score #tal.num.factorial_high.max tal.str_parser matches ..1 run data modify storage t_algorithm_lib:num factorial_high.result set value 1d
data modify storage t_algorithm_lib:num double_calculation.temp.result set value [[1],['.'],[0]]

execute if score #tal.num.factorial_high.max tal.str_parser matches 2.. run function t_algorithm_lib:num/factorial_high/loop


scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
##[自定义输入]double_array
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start


data modify storage t_algorithm_lib:num factorial_high.result set from storage t_algorithm_lib:array double_array_to_double.result
