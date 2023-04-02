#获取尾数
execute store result score #tal.array.binary_to_decimal.list_last tal.input run data get storage t_algorithm_lib:array binary_to_decimal.list[-1]
scoreboard players set #tal.array.binary_to_decimal.num2 tal.input 0

# 1或0 * 2^指针
execute if score #tal.array.binary_to_decimal.list_last tal.input matches 1 run function t_algorithm_lib:array/binary_to_decimal/calculate

scoreboard players operation #tal.array.binary_to_decimal.num tal.input += #tal.array.binary_to_decimal.num2 tal.input

#指针加一
scoreboard players add #tal.array.binary_to_decimal.index tal.input 1

#列表个数 如果列表有下一位，则继续递归
execute store result score #tal.array.binary_to_decimal.list_count tal.input run data get storage t_algorithm_lib:array binary_to_decimal.list
execute if score #tal.array.binary_to_decimal.list_count tal.input matches 1.. run data remove storage t_algorithm_lib:array binary_to_decimal.list[-1]
execute if score #tal.array.binary_to_decimal.list_count tal.input matches 1.. run function t_algorithm_lib:array/binary_to_decimal/loop

