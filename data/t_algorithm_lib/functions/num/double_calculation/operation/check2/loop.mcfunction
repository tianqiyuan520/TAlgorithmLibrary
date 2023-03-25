execute store result score #tal.num.hpc.list_num1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.check.num1[0]
execute store result score #tal.num.hpc.list_num2 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.check.num2[0]
data remove storage t_algorithm_lib:num double_calculation.check.num1[0]
data remove storage t_algorithm_lib:num double_calculation.check.num2[0]
execute if score #tal.num.hpc.list_num1 tal.str_parser > #tal.num.hpc.list_num2 tal.str_parser run scoreboard players add #tal.num.hpc.check_s_ tal.str_parser 1
# execute if score #tal.num.hpc.list_num1 tal.str_parser < #tal.num.hpc.list_num2 tal.str_parser run scoreboard players remove #tal.num.hpc.check_s_ tal.str_parser 1

execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.check.num1

execute if score #tal.num.hpc.list_count1 tal.str_parser matches 1.. if score #tal.num.hpc.list_num1 tal.str_parser >= #tal.num.hpc.list_num2 tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/check2/loop
