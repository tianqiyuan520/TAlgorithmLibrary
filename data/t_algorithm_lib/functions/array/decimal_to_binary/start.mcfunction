###十进制转二进制
##余数进栈
scoreboard players set #2 tal.str_parser 2
scoreboard players set #10 tal.str_parser 10
##数值
## scoreboard players set #tal.array.decimal_to_binary.num tal.str_parser 0

data modify storage t_algorithm_lib:array decimal_to_binary.list set value []

function t_algorithm_lib:array/decimal_to_binary/loop