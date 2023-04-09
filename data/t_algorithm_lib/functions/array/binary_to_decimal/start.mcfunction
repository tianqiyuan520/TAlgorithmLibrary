###二进制转十进制

##[自定义输入] 数组
# data modify storage t_algorithm_lib:array binary_to_decimal.list set value []

scoreboard players set #10 tal.input 10


scoreboard players set #tal.array.binary_to_decimal.num tal.input 0
scoreboard players set #tal.array.binary_to_decimal.index tal.input 0

scoreboard players set #2 tal.input 2

function t_algorithm_lib:array/binary_to_decimal/loop

##[返回结果]
execute store result storage t_algorithm_lib:array binary_to_decimal.num int 1 run scoreboard players get #tal.array.binary_to_decimal.num tal.input