##首判断
##判断 被除数' 个数 是否 >= 除数
# tellraw @a ["第",{"score":{"objective":"tal.str_parser","name":"#tal.num.hpc.division_time"}},"次 被除数 ",{"nbt":"double_calculation.division.num1","storage": "t_algorithm_lib:num","color": "red"},{"nbt":"double_calculation.division.num1_","storage": "t_algorithm_lib:num","color": "blue"},"结果 ",{"nbt":"double_calculation.division_result","storage": "t_algorithm_lib:num","color":"#B8DC9C"}]
execute store result score #tal.num.hpc.num tal.str_parser run data get storage t_algorithm_lib:num double_calculation.division.num1
execute store result score #tal.num.hpc.num2 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.division.num2
execute if score #tal.num.hpc.num tal.str_parser < #tal.num.hpc.num2 tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/division/main/fill

execute if score #tal.num.hpc.num tal.str_parser >= #tal.num.hpc.num2 tal.str_parser run function t_algorithm_lib:num/double_calculation/operation/division/main/main


execute if score #tal.num.hpc.division_time tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/division/loop