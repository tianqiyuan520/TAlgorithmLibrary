##2/(2*x+1)
execute store result score #tal.num.ln.num4 tal.input run data get storage t_algorithm_lib:num ln.list[0]
scoreboard players set #2 tal.input 2
scoreboard players operation #tal.num.ln.num4 tal.input *= #2 tal.input
execute store result storage t_algorithm_lib:num ln.list[0] int 1 run scoreboard players add #tal.num.ln.num4 tal.input 1

##除法
data modify storage t_algorithm_lib:num double_calculation.operation set value 4
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num ln.list[0]
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array double_array_to_string_array.result
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set value ['2']
function t_algorithm_lib:num/double_calculation/operation/start
##加法
data modify storage t_algorithm_lib:num double_calculation.operation set value 1
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:array double_array_to_string_array.result
data modify storage t_algorithm_lib:array double_array_to_string_array.input set from storage t_algorithm_lib:num ln.return
function t_algorithm_lib:array/double_array_to_string_array/start
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:array double_array_to_string_array.result
##除法 (1/x)精度(默认8)
scoreboard players set #tal.num.hpc.division_precision tal.input 8
##是否忽略小数八位以后
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1
function t_algorithm_lib:num/double_calculation/operation/start

data modify storage t_algorithm_lib:num ln.return set from storage t_algorithm_lib:num double_calculation.temp.result





data remove storage t_algorithm_lib:num ln.list[0]
execute store result score #tal.num.ln.list_count tal.input run data get storage t_algorithm_lib:num ln.list
execute if score #tal.num.ln.list_count tal.input matches 1.. run function t_algorithm_lib:num/logarithm/ln/cal2