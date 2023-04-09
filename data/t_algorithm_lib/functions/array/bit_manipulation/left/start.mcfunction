###位操作 左移

##左移个数
# scoreboard players set #tal.array.bit_manipulationL.number1 tal.input 0
##数组
# data modify storage t_algorithm_lib:array bit_manipulationL.list set value []


execute if score #tal.array.bit_manipulationL.number1 tal.input matches 1.. run function t_algorithm_lib:array/bit_manipulation/left/loop


