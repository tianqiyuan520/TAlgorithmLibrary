###开n次方根（正整数）
##[自定义]输入数字
data modify storage t_algorithm_lib:num nthroot.input.num set value 2d
data modify storage t_algorithm_lib:num nthroot.input.num2 set value 10d
##[自定义]是否提醒"运算结束"
# scoreboard players set #tal.num.nthroot.remind tal.input 0
##[自定义]终止运算数
# scoreboard players set #tal.num.nthroot.i2 tal.input 100
function t_algorithm_lib:num/nthroot/main/start