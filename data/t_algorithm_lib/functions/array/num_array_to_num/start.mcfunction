###将数组转化为 数字
#[1,2,3]->[123]
##参数
# data modify storage t_algorithm_lib:array temp.list set value [1,2,3]
scoreboard players set #tal.array.temp.num tal.str_parser 0
scoreboard players set #tal.array.temp.num2 tal.str_parser 0
execute store result score #tal.array.temp.list_count tal.str_parser run data get storage t_algorithm_lib:array temp.list
execute if score #tal.array.temp.list_count tal.str_parser matches 1.. run function t_algorithm_lib:array/num_array_to_num/loop
#返回值
execute store result storage t_algorithm_lib:array temp.return double 1 run scoreboard players get #tal.array.temp.num tal.str_parser
