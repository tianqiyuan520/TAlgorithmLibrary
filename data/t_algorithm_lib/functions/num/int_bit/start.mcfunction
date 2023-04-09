###int数字数位
##低位到高位,%10和/10
##
##[自定义输入]Int数字
# scoreboard players set #tal.num.int_bit.input tal.input 13
##[返回结果]Int数组 高位到低位 (已做翻转)
data modify storage t_algorithm_lib:num int_bit.result set value []
scoreboard players set #10 tal.input 10
scoreboard players set #tal.num.int_bit.num3 tal.input 1

scoreboard players operation #tal.num.int_bit.num tal.input = #tal.num.int_bit.input tal.input

execute if score #tal.num.int_bit.num tal.input matches 1.. run function t_algorithm_lib:num/int_bit/loop
