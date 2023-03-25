##补位 
## [1,3,5] [1,2]  ==> [1,3,5] [0,1,2]

data modify storage t_algorithm_lib:num double_calculation.division.num1_ set from storage t_algorithm_lib:num double_calculation.temp.num1
data modify storage t_algorithm_lib:num double_calculation.division.num2_ set from storage t_algorithm_lib:num double_calculation.temp.num2


execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.division.num1_
execute store result score #tal.num.hpc.list_count2 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.division.num2_

execute unless score #tal.num.hpc.list_count1 tal.str_parser = #tal.num.hpc.list_count2 tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/division/complement/loop

data modify storage t_algorithm_lib:num double_calculation.division.num1 set from storage t_algorithm_lib:num double_calculation.division.num1_
data modify storage t_algorithm_lib:num double_calculation.division.num2 set from storage t_algorithm_lib:num double_calculation.division.num2_
