##获取随机的x [x_min,x_max]
function t_algorithm_lib:num/random/get_seed/by_attributes3/start
scoreboard players operation #tal.num.random.seed tal.input *= #tal.maths.integrate.distance tal.input
scoreboard players set #1000 tal.input 1000
scoreboard players operation #tal.num.random.seed tal.input /= #1000 tal.input
scoreboard players operation #tal.num.random.seed tal.input += #tal.maths.integrate.min tal.input

##sum += f(x) * distance


##[自定义]精度 0为低精度，1为高精度
scoreboard players set #tal.maths.calculator.scale tal.input 0
##[自定义]是否提示运算结束
scoreboard players set #tal.maths.calculator.remind tal.input 0
data modify storage t_algorithm_lib:maths calculator.input set from storage t_algorithm_lib:maths integrate.input
##[自定义]代数
data modify storage t_algorithm_lib:maths calculator.args set value [{"id":"x",value:2.0d}]
execute store result storage t_algorithm_lib:maths calculator.args[{"id":"x"}].value double 0.001 run scoreboard players get #tal.num.random.seed tal.input
function t_algorithm_lib:maths/calculator/start
##sum
# execute store result score #tal.maths.integrate.sum tal.input run data get storage t_algorithm_lib:maths integrate.sum 1000000
execute store result score #tal.maths.integrate.num tal.input run data get storage t_algorithm_lib:maths calculator.result 1000



data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:1}

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths integrate.sum
scoreboard players set #tal.array.double_to_array.symbol tal.input 1
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:maths calculator.temp.n1 set value []
data modify storage t_algorithm_lib:maths calculator.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:maths/calculator/main/cal/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:maths calculator.temp.n1
#
execute store result storage t_algorithm_lib:array double_to_array.num double 0.000001 run scoreboard players operation #tal.maths.integrate.num tal.input *= #tal.maths.integrate.distance tal.input
function t_algorithm_lib:array/double_to_array/start

data modify storage t_algorithm_lib:maths calculator.temp.n1 set value []
data modify storage t_algorithm_lib:maths calculator.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:maths/calculator/main/cal/loop_sp/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths calculator.temp.n1

function t_algorithm_lib:num/double_calculation/operation/start

##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
# scoreboard players operation #tal.str.temp.num tal.input += #tal.str.temp.num2 tal.input

data modify storage t_algorithm_lib:maths integrate.sum set from storage t_algorithm_lib:array double_array_to_double.result



scoreboard players remove #tal.maths.integrate.samples_ tal.input 1
scoreboard players remove #tal.maths.integrate.time tal.input 1
execute if score #tal.maths.integrate.samples_ tal.input matches 0 run function t_algorithm_lib:maths/integrate/definite_integral/end

execute if score #tal.maths.integrate.samples_ tal.input matches 1.. if score #tal.maths.integrate.time tal.input matches 0 run schedule function t_algorithm_lib:maths/integrate/definite_integral/loop 1t replace
execute if score #tal.maths.integrate.samples_ tal.input matches 1.. if score #tal.maths.integrate.time tal.input matches 0 run scoreboard players set #tal.maths.integrate.time tal.input 16
execute if score #tal.maths.integrate.samples_ tal.input matches 1.. if score #tal.maths.integrate.time tal.input matches 1..15 run function t_algorithm_lib:maths/integrate/definite_integral/loop