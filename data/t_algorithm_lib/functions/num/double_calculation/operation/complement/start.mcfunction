##补位 
## [1,3,5] [1,2]  ==> [1,3,5] [0,1,2]

execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.check.num1
execute store result score #tal.num.hpc.list_count2 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.check.num2

execute unless score #tal.num.hpc.list_count1 tal.str_parser = #tal.num.hpc.list_count2 tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/complement/loop