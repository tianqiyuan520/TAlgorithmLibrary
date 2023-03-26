

data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:4}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths integrate.sum
scoreboard players set #tal.array.double_to_array.symbol tal.str_parser 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:maths calculator.temp.n1 set value []
data modify storage t_algorithm_lib:maths calculator.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:maths/calculator/main/cal/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:maths calculator.temp.n1
#
execute store result storage t_algorithm_lib:array double_to_array.num double 1.0 run scoreboard players get #tal.maths.integrate.samples tal.str_parser
function t_algorithm_lib:array/double_to_array/start

data modify storage t_algorithm_lib:maths calculator.temp.n1 set value []
data modify storage t_algorithm_lib:maths calculator.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:maths/calculator/main/cal/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths calculator.temp.n1

function t_algorithm_lib:num/double_calculation/operation/start

##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.str_parser = #tal.num.hpc.num3_pn tal.str_parser
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
# scoreboard players operation #tal.str.temp.num tal.str_parser += #tal.str.temp.num2 tal.str_parser

data modify storage t_algorithm_lib:maths integrate.sum set from storage t_algorithm_lib:array double_array_to_double.result

execute if score #tal.maths.integrate.remind tal.str_parser matches 1 run tellraw @a ["运算结束\nresult: ",{"nbt":"integrate.sum","storage": "t_algorithm_lib:maths","color": "green"}]
execute if score #tal.maths.integrate.remind tal.str_parser matches 1 run playsound entity.player.levelup voice @a ~ ~ ~ 1 2


# execute store result score #tal.maths.integrate.sum tal.str_parser run data get storage t_algorithm_lib:maths integrate.sum 1000000
# execute store result storage t_algorithm_lib:maths integrate.sum double 0.000001 run scoreboard players operation #tal.maths.integrate.sum tal.str_parser /= #tal.maths.integrate.samples tal.str_parser