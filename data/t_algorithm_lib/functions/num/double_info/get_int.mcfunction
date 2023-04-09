##获取整数部分

data remove storage t_algorithm_lib:num double_info.char
data modify storage t_algorithm_lib:num double_info.char set from storage t_algorithm_lib:num double_info.temp[0][0]


execute if data storage t_algorithm_lib:num double_info{char:"."} run scoreboard players set #tal.num.double_info.num1 tal.input 1
execute if data storage t_algorithm_lib:num double_info{char:"-"} if score #tal.num.double_info.num1 tal.input matches 0 run data modify storage t_algorithm_lib:num double_info.result.sign set from storage t_algorithm_lib:num double_info.temp[0][0]
execute if data storage t_algorithm_lib:num double_info{char:"+"} if score #tal.num.double_info.num1 tal.input matches 0 run data modify storage t_algorithm_lib:num double_info.result.sign set from storage t_algorithm_lib:num double_info.temp[0][0]
execute unless data storage t_algorithm_lib:num double_info{char:"-"} unless data storage t_algorithm_lib:num double_info{char:"+"} if score #tal.num.double_info.num1 tal.input matches 0 run data modify storage t_algorithm_lib:num double_info.result.int append from storage t_algorithm_lib:num double_info.temp[0][0]

data remove storage t_algorithm_lib:num double_info.temp[0]

execute store result score #tal.num.double_info.list_count1 tal.input run data get storage t_algorithm_lib:num double_info.temp
execute if score #tal.num.double_info.list_count1 tal.input matches 1.. if score #tal.num.double_info.num1 tal.input matches 0 run function t_algorithm_lib:num/double_info/get_int