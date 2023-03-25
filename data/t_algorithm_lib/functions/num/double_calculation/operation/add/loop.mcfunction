execute store result score #tal.num.hpc.list_num1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.add.num1[-1]
execute store result score #tal.num.hpc.list_num2 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.add.num2[-1]

data remove storage t_algorithm_lib:num double_calculation.add.num1[-1]
data remove storage t_algorithm_lib:num double_calculation.add.num2[-1]

#相加
scoreboard players operation #tal.num.hpc.list_num1 tal.str_parser += #tal.num.hpc.list_num2 tal.str_parser
#进位
scoreboard players operation #tal.num.hpc.list_num1 tal.str_parser += #tal.num.hpc.add_extra tal.str_parser
scoreboard players set #10 tal.str_parser 10
scoreboard players operation #tal.num.hpc.list_num1_ tal.str_parser = #tal.num.hpc.list_num1 tal.str_parser
scoreboard players operation #tal.num.hpc.add_extra tal.str_parser = #tal.num.hpc.list_num1 tal.str_parser

#判断是否需要进位
execute if score #tal.num.hpc.list_num1 tal.str_parser matches 10.. run scoreboard players operation #tal.num.hpc.add_extra tal.str_parser /= #10 tal.str_parser
execute if score #tal.num.hpc.list_num1 tal.str_parser matches 10.. run scoreboard players operation #tal.num.hpc.list_num1_ tal.str_parser %= #10 tal.str_parser

execute if score #tal.num.hpc.list_num1 tal.str_parser matches ..9 run scoreboard players set #tal.num.hpc.add_extra tal.str_parser 0

data modify storage t_algorithm_lib:num double_calculation.add_result prepend value 0
execute store result storage t_algorithm_lib:num double_calculation.add_result[0] int 1 run scoreboard players get #tal.num.hpc.list_num1_ tal.str_parser


execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.add.num1
execute if score #tal.num.hpc.list_count1 tal.str_parser matches 0 if score #tal.num.hpc.add_extra tal.str_parser matches 1.. run data modify storage t_algorithm_lib:num double_calculation.add.num1 prepend value 0
execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.add.num1

execute if score #tal.num.hpc.list_count1 tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/add/loop
