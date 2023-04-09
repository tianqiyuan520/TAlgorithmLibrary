
execute if score #tal.num.hpc.list_count1 tal.input > #tal.num.hpc.list_count2 tal.input run data modify storage t_algorithm_lib:num double_calculation.check.num2 prepend value 0
execute if score #tal.num.hpc.list_count1 tal.input < #tal.num.hpc.list_count2 tal.input run data modify storage t_algorithm_lib:num double_calculation.check.num1 prepend value 0



execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.check.num1
execute store result score #tal.num.hpc.list_count2 tal.input run data get storage t_algorithm_lib:num double_calculation.check.num2

execute unless score #tal.num.hpc.list_count1 tal.input = #tal.num.hpc.list_count2 tal.input run function t_algorithm_lib:num/double_calculation/operation/complement/loop