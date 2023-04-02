###类似快速幂
##
# last 为上一个数不是质数，的可被整除的数
# data modify storage t_algorithm_lib:num nthroot.main.stack set value [{num1:1,num2:1,is_return:0,return:0,last:0}] 栈的模板
data modify storage t_algorithm_lib:num nthroot.main.stack set value []
scoreboard players set #tal.num.nthroot.num tal.input 1

##[自定义]终止运算数
# scoreboard players set #tal.num.nthroot.i2 tal.input 10000
##[自定义]是否提醒"运算结束"
# scoreboard players set #tal.num.nthroot.remind tal.input 0
scoreboard players set #tal.num.nthroot.i tal.input 0

data modify storage t_algorithm_lib:num nthroot.main.stack set value [{num1:1,num2:1,is_return:0,return:0,last:0}]
data modify storage t_algorithm_lib:num nthroot.main.stack[0].num1 set from storage t_algorithm_lib:num nthroot.input.num
data modify storage t_algorithm_lib:num nthroot.main.stack[0].num2 set from storage t_algorithm_lib:num nthroot.input.num2

function t_algorithm_lib:num/nthroot/main/main/main
