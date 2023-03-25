###快速幂运算（正整数）
##[自定义]底数
# data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num set value 5
##[自定义]指数
# data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num2 set value 12
##
# data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack set value [{num1:1,num2:1,is_return:0,return:0}] 栈的模板
##返回结果
data modify storage t_algorithm_lib:num exponentiation_by_squaring.result set value []

data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack set value []
scoreboard players set #tal.num.exponentiation_by_squaring.num tal.str_parser 1

##[自定义]终止运算数
# scoreboard players set #tal.num.exponentiation_by_squaring.i2 tal.str_parser 10000
##[自定义]精度 （0为scb计算，1为高精度）
# scoreboard players set #tal.num.exponentiation_by_squaring.sca tal.str_parser 0

scoreboard players set #tal.num.exponentiation_by_squaring.i tal.str_parser 0


data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack set value [{num1:1,num2:1,is_return:0,return:0,last:0}]
data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[0].num1 set from storage t_algorithm_lib:num exponentiation_by_squaring.input.num
data modify storage t_algorithm_lib:num exponentiation_by_squaring.main.stack[0].num2 set from storage t_algorithm_lib:num exponentiation_by_squaring.input.num2


execute if score #tal.num.exponentiation_by_squaring.sca tal.str_parser matches 1 run function t_algorithm_lib:num/exponentiation_by_squaring/high_scale/start

function t_algorithm_lib:num/exponentiation_by_squaring/main/main
function t_algorithm_lib:num/exponentiation_by_squaring/end

##[自定义]底数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num set value 2
##[自定义]指数
data modify storage t_algorithm_lib:num exponentiation_by_squaring.input.num2 set value 6
##[自定义]终止运算数
scoreboard players set #tal.num.exponentiation_by_squaring.i2 tal.str_parser 10000
##[自定义]精度 （0为scb计算，1为高精度）
scoreboard players set #tal.num.exponentiation_by_squaring.sca tal.str_parser 0