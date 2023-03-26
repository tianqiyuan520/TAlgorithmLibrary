###自然对数
#数字
##[自定义输入]整数
# scoreboard players set #tal.num.ln.num1 tal.str_parser 1
#
data modify storage t_algorithm_lib:num ln.list set value []
##记录 ln(2)的个数
scoreboard players set #tal.num.ln.num2 tal.str_parser 0
##判断是否遇到 ln3
scoreboard players set #tal.num.ln.is_ln3 tal.str_parser 0
##结束
scoreboard players set #tal.num.ln.end tal.str_parser 0

scoreboard players set #tal.num.ln.result tal.str_parser 0

scoreboard players operation #tal.num.ln.num3 tal.str_parser = #tal.num.ln.num1 tal.str_parser

scoreboard players set #tal.num.ln.2 tal.str_parser 69314
scoreboard players set #tal.num.ln.3 tal.str_parser 109861
scoreboard players set #2 tal.str_parser 2

function t_algorithm_lib:num/logarithm/ln/loop

##开始遍历  2*[(n-1)*连乘(i=0,n)n_i+连乘(i=0,n-1)n_i]
data modify storage t_algorithm_lib:ln return set value 0.0
execute store result score #tal.num.ln.list_count tal.str_parser run data get storage t_algorithm_lib:num ln.list
execute if score #tal.num.ln.list_count tal.str_parser matches 1.. run function t_algorithm_lib:num/logarithm/ln/cal
#
scoreboard players operation #tal.num.ln.num2 tal.str_parser *= #tal.num.ln.2 tal.str_parser
execute store result score #tal.num.ln.num5 tal.str_parser run data get storage t_algorithm_lib:ln return 100000
scoreboard players operation #tal.num.ln.num5 tal.str_parser += #tal.num.ln.num2 tal.str_parser
execute if score #tal.num.ln.is_ln3 tal.str_parser matches 1 run scoreboard players operation #tal.num.ln.num5 tal.str_parser += #tal.num.ln.3 tal.str_parser
scoreboard players operation #tal.num.ln.result tal.str_parser = #tal.num.ln.num5 tal.str_parser

#返回值
execute store result storage t_algorithm_lib:num ln.return double 0.00001 run scoreboard players get #tal.num.ln.result tal.str_parser
execute store result storage t_algorithm_lib:num temp.return double 0.00001 run scoreboard players get #tal.num.ln.result tal.str_parser
##[自定义输入]整数
scoreboard players set #tal.num.ln.num1 tal.str_parser 10