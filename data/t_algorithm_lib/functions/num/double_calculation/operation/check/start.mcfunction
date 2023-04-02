##判断两个纯数组 大小比较
# data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.temp.num1
# data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.temp.num2

##0小1等2大
scoreboard players set #tal.num.hpc.check_s tal.input 0
scoreboard players set #tal.num.hpc.check_s_ tal.input 0

##去除左边不必要的0

# data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set from storage t_algorithm_lib:num double_calculation.check.num1
# function t_algorithm_lib:num/double_calculation/operation/remove_l/loop
# data modify storage t_algorithm_lib:num double_calculation.check.num1 set from storage t_algorithm_lib:num double_calculation.remove_l.num1

# data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set from storage t_algorithm_lib:num double_calculation.check.num2
# function t_algorithm_lib:num/double_calculation/operation/remove_l/loop
# data modify storage t_algorithm_lib:num double_calculation.check.num2 set from storage t_algorithm_lib:num double_calculation.remove_l.num1

# execute store result score #tal.num.hpc.list_count1 tal.input run data get storage t_algorithm_lib:num double_calculation.check.num1
# execute store result score #tal.num.hpc.list_count2 tal.input run data get storage t_algorithm_lib:num double_calculation.check.num2
# execute if score #tal.num.hpc.list_count1 tal.input > #tal.num.hpc.list_count2 tal.input run scoreboard players set #tal.num.hpc.check_s tal.input 2
# execute if score #tal.num.hpc.list_count1 tal.input < #tal.num.hpc.list_count2 tal.input run scoreboard players set #tal.num.hpc.check_s tal.input 0

##进行补位
function t_algorithm_lib:num/double_calculation/operation/complement/start

##循环遍历判断

data modify storage t_algorithm_lib:num double_calculation.temp.num_check set from storage t_algorithm_lib:num double_calculation.check.num1
execute store result score #tal.num.hpc.check tal.input run data modify storage t_algorithm_lib:num double_calculation.temp.num_check set from storage t_algorithm_lib:num double_calculation.check.num2
execute if score #tal.num.hpc.check tal.input matches 0 run scoreboard players set #tal.num.hpc.check_s tal.input 1
##不等于时,循环判断
scoreboard players set #tal.num.hpc.check_s_ tal.input 0
##记录等于的次数
scoreboard players set #tal.num.hpc.check_e tal.input 0

execute store result score #tal.num.hpc.list_count2 tal.input run data get storage t_algorithm_lib:num double_calculation.check.num1

function t_algorithm_lib:num/double_calculation/operation/check/loop
execute if score #tal.num.hpc.check_s_ tal.input matches 1.. run scoreboard players set #tal.num.hpc.check_s tal.input 2

execute if score #tal.num.hpc.check_e tal.input = #tal.num.hpc.list_count2 tal.input run scoreboard players set #tal.num.hpc.check_s tal.input 1