#获取尾数
execute store result score #tal.array.binary_to_decimal.list_last tal.str_parser run data get storage t_algorithm_lib:array binary_to_decimal.list[-1]
scoreboard players set #tal.array.binary_to_decimal.num2 tal.str_parser 0

# 1或0 * 2^指针
execute if score #tal.array.binary_to_decimal.list_last tal.str_parser matches 1 run function t_algorithm_lib:array/binary_to_decimal/calculate

scoreboard players operation #tal.array.binary_to_decimal.num tal.str_parser += #tal.array.binary_to_decimal.num2 tal.str_parser

#指针加一
scoreboard players add #tal.array.binary_to_decimal.index tal.str_parser 1

#列表个数 如果列表有下一位，则继续递归
execute store result score #tal.array.binary_to_decimal.list_count tal.str_parser run data get storage t_algorithm_lib:array binary_to_decimal.list
execute if score #tal.array.binary_to_decimal.list_count tal.str_parser matches 1.. run data remove storage t_algorithm_lib:array binary_to_decimal.list[-1]
execute if score #tal.array.binary_to_decimal.list_count tal.str_parser matches 1.. run function t_algorithm_lib:array/binary_to_decimal/loop

