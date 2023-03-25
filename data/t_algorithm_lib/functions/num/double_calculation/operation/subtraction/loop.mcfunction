execute store result score #tal.num.hpc.list_num1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.subtraction.num1[-1]
execute store result score #tal.num.hpc.list_num2 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.subtraction.num2[-1]

data remove storage t_algorithm_lib:num double_calculation.subtraction.num1[-1]
data remove storage t_algorithm_lib:num double_calculation.subtraction.num2[-1]



scoreboard players operation #tal.num.hpc.list_num1 tal.str_parser -= #tal.num.hpc.subtraction_extra tal.str_parser

#相减


scoreboard players set #10 tal.str_parser 10
scoreboard players operation #tal.num.hpc.list_num1_ tal.str_parser = #tal.num.hpc.list_num1 tal.str_parser
scoreboard players operation #tal.num.hpc.subtraction_extra tal.str_parser = #tal.num.hpc.list_num1 tal.str_parser

#大于
execute if score #tal.num.hpc.list_num1 tal.str_parser >= #tal.num.hpc.list_num2 tal.str_parser run scoreboard players set #tal.num.hpc.subtraction_extra tal.str_parser 0
execute if score #tal.num.hpc.list_num1 tal.str_parser >= #tal.num.hpc.list_num2 tal.str_parser run scoreboard players operation #tal.num.hpc.list_num1_ tal.str_parser -= #tal.num.hpc.list_num2 tal.str_parser
#小于
execute if score #tal.num.hpc.list_num1 tal.str_parser < #tal.num.hpc.list_num2 tal.str_parser run scoreboard players set #tal.num.hpc.subtraction_extra tal.str_parser 1
execute if score #tal.num.hpc.list_num1 tal.str_parser < #tal.num.hpc.list_num2 tal.str_parser run scoreboard players operation #tal.num.hpc.list_num1_ tal.str_parser += #10 tal.str_parser
execute if score #tal.num.hpc.list_num1 tal.str_parser < #tal.num.hpc.list_num2 tal.str_parser run scoreboard players operation #tal.num.hpc.list_num1_ tal.str_parser -= #tal.num.hpc.list_num2 tal.str_parser


data modify storage t_algorithm_lib:num double_calculation.subtraction_result prepend value 0
execute store result storage t_algorithm_lib:num double_calculation.subtraction_result[0] int 1 run scoreboard players get #tal.num.hpc.list_num1_ tal.str_parser

execute if score #tal.num.hpc.list_num1_ tal.str_parser matches 0 run scoreboard players add #tal.num.hpc.subtraction_zero tal.str_parser 1


execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.subtraction.num1
execute if score #tal.num.hpc.list_count1 tal.str_parser matches 0 if score #tal.num.hpc.subtraction_extra tal.str_parser matches 1.. run data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 prepend value 0
execute if score #tal.num.hpc.list_count1 tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/subtraction/loop
