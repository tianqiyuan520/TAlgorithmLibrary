execute store result score #tal.num.hpc.list_num1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.mul_simple.num1[-1]
execute store result score #tal.num.hpc.list_num2 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.mul_simple.num2[0]

data remove storage t_algorithm_lib:num double_calculation.mul_simple.num1[-1]



#相减


scoreboard players set #10 tal.str_parser 10


scoreboard players operation #tal.num.hpc.list_num1 tal.str_parser *= #tal.num.hpc.list_num2 tal.str_parser

scoreboard players operation #tal.num.hpc.list_num1_ tal.str_parser = #tal.num.hpc.list_num1 tal.str_parser
scoreboard players operation #tal.num.hpc.mul_simple_extra tal.str_parser = #tal.num.hpc.list_num1 tal.str_parser

#大于
execute if score #tal.num.hpc.list_num1 tal.str_parser matches 10.. run scoreboard players operation #tal.num.hpc.mul_simple_extra tal.str_parser /= #10 tal.str_parser
execute if score #tal.num.hpc.list_num1 tal.str_parser matches 10.. run scoreboard players operation #tal.num.hpc.list_num1_ tal.str_parser %= #10 tal.str_parser


data modify storage t_algorithm_lib:num double_calculation.mul_simple_result prepend value 0
data modify storage t_algorithm_lib:num double_calculation.mul_simple_result2 prepend value 0


execute store result storage t_algorithm_lib:num double_calculation.mul_simple_result[0] int 1 run scoreboard players get #tal.num.hpc.list_num1_ tal.str_parser
execute if score #tal.num.hpc.list_num1 tal.str_parser matches 10.. store result storage t_algorithm_lib:num double_calculation.mul_simple_result2[0] int 1 run scoreboard players get #tal.num.hpc.mul_simple_extra tal.str_parser


execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.mul_simple.num1
execute if score #tal.num.hpc.list_count1 tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/mul_simple/loop
