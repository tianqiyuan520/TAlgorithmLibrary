###双阶乘
##(2n)!! = 2^n*n!
##(2n-1)!! = (2n)! / 2^n*n!

##[自定义输入] 实数
# data modify storage t_algorithm_lib:num double_factorial.input.num set value 2.0d
##
scoreboard players set #2 tal.input 2
execute store result score #tal.num.double_factorial.check tal.input run data get storage t_algorithm_lib:num double_factorial.input.num
##判断单复数
scoreboard players operation #tal.num.double_factorial.check tal.input %= #2 tal.input
execute if score #tal.num.double_factorial.check tal.input matches 0 run function t_algorithm_lib:num/double_factorial/even/start
execute if score #tal.num.double_factorial.check tal.input matches 1 run function t_algorithm_lib:num/double_factorial/singular/start
