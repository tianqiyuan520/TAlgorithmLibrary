execute store result score #tal.num.hpc.list_num1 tal.input run data get storage t_algorithm_lib:num double_calculation.mul.num1[-1]
##获取 第二个数 该位置的值
execute store result score #tal.num.hpc.list_num2 tal.input run data get storage t_algorithm_lib:num double_calculation.mul.num2[-1]
function t_algorithm_lib:num/double_calculation/operation/mul/get_num_index


# data remove storage t_algorithm_lib:num double_calculation.mul.num1[-1]





# scoreboard players set #10 tal.input 10


# scoreboard players operation #tal.num.hpc.list_num1 tal.input *= #tal.num.hpc.list_num2 tal.input

# scoreboard players operation #tal.num.hpc.list_num1_ tal.input = #tal.num.hpc.list_num1 tal.input
# scoreboard players operation #tal.num.hpc.mul_extra tal.input = #tal.num.hpc.list_num1 tal.input

# #大于
# execute if score #tal.num.hpc.list_num1 tal.input matches 10.. run scoreboard players operation #tal.num.hpc.mul_extra tal.input /= #10 tal.input
# execute if score #tal.num.hpc.list_num1 tal.input matches 10.. run scoreboard players operation #tal.num.hpc.list_num1_ tal.input %= #10 tal.input


# data modify storage t_algorithm_lib:num double_calculation.mul_result prepend value 0
# data modify storage t_algorithm_lib:num double_calculation.mul_result2 prepend value 0


# execute store result storage t_algorithm_lib:num double_calculation.mul_result[0] int 1 run scoreboard players get #tal.num.hpc.list_num1_ tal.input
# execute if score #tal.num.hpc.list_num1 tal.input matches 10.. store result storage t_algorithm_lib:num double_calculation.mul_result2[0] int 1 run scoreboard players get #tal.num.hpc.mul_extra tal.input


# execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.mul.num1
# execute if score #tal.num.hpc.list_count1 tal.input matches 1.. run function t_algorithm_lib:num/double_calculation/operation/mul/loop
