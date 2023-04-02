execute if score #tal.num.hpc.num1_p tal.input > #tal.num.hpc.num2_p tal.input run data modify storage t_algorithm_lib:num double_calculation.check.num2 append value 0
execute if score #tal.num.hpc.num1_p tal.input < #tal.num.hpc.num2_p tal.input run data modify storage t_algorithm_lib:num double_calculation.check.num1 append value 0

execute if score #tal.num.hpc.num1_p tal.input > #tal.num.hpc.num2_p tal.input run scoreboard players add #tal.num.hpc.num2_p tal.input 1
execute if score #tal.num.hpc.num1_p tal.input < #tal.num.hpc.num2_p tal.input run scoreboard players add #tal.num.hpc.num1_p tal.input 1



execute unless score #tal.num.hpc.num1_p tal.input = #tal.num.hpc.num2_p tal.input run function t_algorithm_lib:num/double_calculation/operation/complement/point_loop