
scoreboard players set #tal.num.hpc.num2_p tal.input 0
scoreboard players set #tal.num.hpc.num1 tal.input 0
scoreboard players set #tal.num.hpc.SFIB tal.input 0

data modify storage t_algorithm_lib:num double_calculation.temp.num set from storage t_algorithm_lib:num double_calculation.temp.num2
data modify storage t_algorithm_lib:num double_calculation.temp.list_ set value []


function t_algorithm_lib:num/double_calculation/operation/re_build_array/loop
scoreboard players remove #tal.num.hpc.num1 tal.input 1

data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:num double_calculation.temp.list_
scoreboard players operation #tal.num.hpc.num2_p tal.input = #tal.num.hpc.num1 tal.input