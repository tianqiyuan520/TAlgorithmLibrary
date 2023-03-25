###二进制转十进制

##数值
# data modify storage t_algorithm_lib:array binary_to_decimal.list set value []

scoreboard players set #10 tal.str_parser 10


scoreboard players set #tal.array.binary_to_decimal.num tal.str_parser 0
scoreboard players set #tal.array.binary_to_decimal.index tal.str_parser 0

scoreboard players set #2 tal.str_parser 2

function t_algorithm_lib:array/binary_to_decimal/loop


execute store result storage t_algorithm_lib:array binary_to_decimal.num int 1 run scoreboard players get #tal.array.binary_to_decimal.num tal.str_parser