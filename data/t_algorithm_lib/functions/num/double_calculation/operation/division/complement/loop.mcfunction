
execute if score #tal.num.hpc.list_count1 tal.input > #tal.num.hpc.list_count2 tal.input run data modify storage t_algorithm_lib:num double_calculation.division.num2_ append value 0
execute if score #tal.num.hpc.list_count1 tal.input > #tal.num.hpc.list_count2 tal.input run scoreboard players add #tal.num.hpc.division.fill_t tal.input 1
execute if score #tal.num.hpc.list_count1 tal.input < #tal.num.hpc.list_count2 tal.input run data modify storage t_algorithm_lib:num double_calculation.division.num1_ append value 0
execute if score #tal.num.hpc.list_count1 tal.input < #tal.num.hpc.list_count2 tal.input run scoreboard players remove #tal.num.hpc.division.fill_t tal.input 1



execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.division.num1_
execute store result score #tal.num.hpc.list_count2 tal.input run data get storage t_algorithm_lib:num double_calculation.division.num2_
execute unless score #tal.num.hpc.list_count1 tal.input = #tal.num.hpc.list_count2 tal.input run function t_algorithm_lib:num/double_calculation/operation/division/complement/loop