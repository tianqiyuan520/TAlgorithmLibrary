execute if score #tal.maths.STExpression.is_doit tal.input matches 0 run data modify storage t_algorithm_lib:maths string_to_expression.temp.list append value ['.']
execute if score #tal.maths.STExpression.is_doit tal.input matches 0 run data modify storage t_algorithm_lib:maths string_to_expression.temp.list append value [0]

##判断是否添加负号
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char2 set value [""]
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.result[-1] 
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char2 set from storage t_algorithm_lib:maths string_to_expression.result[-2]
##移除多余符号
scoreboard players set #tal.maths.STExpression.is_n tal.input 0
scoreboard players set #tal.maths.STExpression.is_remove tal.input 0
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:["-"]} run function t_algorithm_lib:maths/string_to_expression/check_symbol
execute if score #tal.maths.STExpression.is_remove tal.input matches 1 run scoreboard players set #tal.maths.STExpression.is_n tal.input 1
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:["+"]} run function t_algorithm_lib:maths/string_to_expression/check_symbol
##
scoreboard players set #tal.maths.STExpression.is_doit tal.input 0
scoreboard players set #tal.num.hpc.num3_pn tal.input 1

data modify storage t_algorithm_lib:num double_calculation.temp.result set from storage t_algorithm_lib:maths string_to_expression.temp.list

execute if score #tal.maths.STExpression.is_remove tal.input matches 1 run data remove storage t_algorithm_lib:maths string_to_expression.result[-1]
execute if score #tal.maths.STExpression.is_n tal.input matches 1 run scoreboard players set #tal.num.hpc.num3_pn tal.input -1

##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:maths string_to_expression.temp.n set from storage t_algorithm_lib:array double_array_to_double.result


# data modify storage t_algorithm_lib:array temp.list set from storage t_algorithm_lib:maths string_to_expression.temp.list
# execute store result score #tal.maths.STExpression.list_count2 tal.input run data get storage t_algorithm_lib:maths string_to_expression.temp.list
# function t_algorithm_lib:array/num_array_to_num/start

execute unless score #tal.maths.STExpression.list_count2 tal.input matches 0 run function t_algorithm_lib:maths/string_to_expression/check_tier
data modify storage t_algorithm_lib:maths string_to_expression.temp.list set value []
