execute store result score #tal.num.hpc.list_num1 tal.input run data get storage t_algorithm_lib:num double_calculation.add.num1[-1]
execute store result score #tal.num.hpc.list_num2 tal.input run data get storage t_algorithm_lib:num double_calculation.add.num2[-1]

data remove storage t_algorithm_lib:num double_calculation.add.num1[-1]
data remove storage t_algorithm_lib:num double_calculation.add.num2[-1]

#相加
scoreboard players operation #tal.num.hpc.list_num1 tal.input += #tal.num.hpc.list_num2 tal.input
#进位
scoreboard players operation #tal.num.hpc.list_num1 tal.input += #tal.num.hpc.add_extra tal.input
scoreboard players set #10 tal.input 10
scoreboard players operation #tal.num.hpc.list_num1_ tal.input = #tal.num.hpc.list_num1 tal.input
scoreboard players operation #tal.num.hpc.add_extra tal.input = #tal.num.hpc.list_num1 tal.input

#判断是否需要进位
execute if score #tal.num.hpc.list_num1 tal.input matches 10.. run scoreboard players operation #tal.num.hpc.add_extra tal.input /= #10 tal.input
execute if score #tal.num.hpc.list_num1 tal.input matches 10.. run scoreboard players operation #tal.num.hpc.list_num1_ tal.input %= #10 tal.input

execute if score #tal.num.hpc.list_num1 tal.input matches ..9 run scoreboard players set #tal.num.hpc.add_extra tal.input 0

data modify storage t_algorithm_lib:num double_calculation.add_result prepend value 0
execute store result storage t_algorithm_lib:num double_calculation.add_result[0] int 1 run scoreboard players get #tal.num.hpc.list_num1_ tal.input


execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.add.num1
execute if score #tal.num.hpc.list_count1 tal.input matches 0 if score #tal.num.hpc.add_extra tal.input matches 1.. run data modify storage t_algorithm_lib:num double_calculation.add.num1 prepend value 0
execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.add.num1

execute if score #tal.num.hpc.list_count1 tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/add/loop
