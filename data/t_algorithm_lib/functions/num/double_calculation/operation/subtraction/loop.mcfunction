execute store result score #tal.num.hpc.list_num1 tal.input run data get storage t_algorithm_lib:num double_calculation.subtraction.num1[-1]
execute store result score #tal.num.hpc.list_num2 tal.input run data get storage t_algorithm_lib:num double_calculation.subtraction.num2[-1]

data remove storage t_algorithm_lib:num double_calculation.subtraction.num1[-1]
data remove storage t_algorithm_lib:num double_calculation.subtraction.num2[-1]



scoreboard players operation #tal.num.hpc.list_num1 tal.input -= #tal.num.hpc.subtraction_extra tal.input

#相减


scoreboard players set #10 tal.input 10
scoreboard players operation #tal.num.hpc.list_num1_ tal.input = #tal.num.hpc.list_num1 tal.input
scoreboard players operation #tal.num.hpc.subtraction_extra tal.input = #tal.num.hpc.list_num1 tal.input

#大于
execute if score #tal.num.hpc.list_num1 tal.input >= #tal.num.hpc.list_num2 tal.input run scoreboard players set #tal.num.hpc.subtraction_extra tal.input 0
execute if score #tal.num.hpc.list_num1 tal.input >= #tal.num.hpc.list_num2 tal.input run scoreboard players operation #tal.num.hpc.list_num1_ tal.input -= #tal.num.hpc.list_num2 tal.input
#小于
execute if score #tal.num.hpc.list_num1 tal.input < #tal.num.hpc.list_num2 tal.input run scoreboard players set #tal.num.hpc.subtraction_extra tal.input 1
execute if score #tal.num.hpc.list_num1 tal.input < #tal.num.hpc.list_num2 tal.input run scoreboard players operation #tal.num.hpc.list_num1_ tal.input += #10 tal.input
execute if score #tal.num.hpc.list_num1 tal.input < #tal.num.hpc.list_num2 tal.input run scoreboard players operation #tal.num.hpc.list_num1_ tal.input -= #tal.num.hpc.list_num2 tal.input


data modify storage t_algorithm_lib:num double_calculation.subtraction_result prepend value 0
execute store result storage t_algorithm_lib:num double_calculation.subtraction_result[0] int 1 run scoreboard players get #tal.num.hpc.list_num1_ tal.input

execute if score #tal.num.hpc.list_num1_ tal.input matches 0 run scoreboard players add #tal.num.hpc.subtraction_zero tal.input 1


execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.subtraction.num1
execute if score #tal.num.hpc.list_count1 tal.input matches 0 if score #tal.num.hpc.subtraction_extra tal.input matches 1.. run data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 prepend value 0
execute if score #tal.num.hpc.list_count1 tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/subtraction/loop
