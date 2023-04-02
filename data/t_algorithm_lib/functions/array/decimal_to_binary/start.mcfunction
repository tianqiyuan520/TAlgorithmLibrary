###十进制转二进制
##余数进栈
scoreboard players set #2 tal.input 2
scoreboard players set #10 tal.input 10
##[自定义输入] 整数数字
## scoreboard players set #tal.array.decimal_to_binary.num tal.input 0
##返回结果
data modify storage t_algorithm_lib:array decimal_to_binary.list set value []

function t_algorithm_lib:array/decimal_to_binary/loop