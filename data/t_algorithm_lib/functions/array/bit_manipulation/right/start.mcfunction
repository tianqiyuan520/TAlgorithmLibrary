###位操作 左移

##右移个数
# scoreboard players set #tal.array.bit_manipulationR.number1 tal.input 0
##数组
# data modify storage t_algorithm_lib:array bit_manipulationR.list set value []


execute if score #tal.array.bit_manipulationR.number1 tal.input matches 1.. run function t_algorithm_lib:array/bit_manipulation/right/loop


