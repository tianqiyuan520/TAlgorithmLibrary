execute store result score #tal.num.hpc.list_num1 tal.input run data get storage t_algorithm_lib:num double_calculation.check.num1[0]
execute store result score #tal.num.hpc.list_num2 tal.input run data get storage t_algorithm_lib:num double_calculation.check.num2[0]
data remove storage t_algorithm_lib:num double_calculation.check.num1[0]
data remove storage t_algorithm_lib:num double_calculation.check.num2[0]
execute if score #tal.num.hpc.list_num1 tal.input > #tal.num.hpc.list_num2 tal.input run scoreboard players add #tal.num.hpc.check_s_ tal.input 1
execute if score #tal.num.hpc.list_num1 tal.input = #tal.num.hpc.list_num2 tal.input run scoreboard players add #tal.num.hpc.check_e tal.input 1
# execute if score #tal.num.hpc.list_num1 tal.input < #tal.num.hpc.list_num2 tal.input run scoreboard players remove #tal.num.hpc.check_s_ tal.input 1

execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.check.num1

execute if score #tal.num.hpc.list_count1 tal.input matches 1.. if score #tal.num.hpc.list_num1 tal.input = #tal.num.hpc.list_num2 tal.input run function t_algorithm_lib:num/double_calculation/operation/check/loop
