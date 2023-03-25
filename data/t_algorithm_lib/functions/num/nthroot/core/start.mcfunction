##牛顿迭代法(开n次方)
##[自定义] a,b (b为整数)
# data modify storage t_algorithm_lib:num nthroot.core.input.num set value 2d
# data modify storage t_algorithm_lib:num nthroot.core.input.num2 set value 2d
##
data modify storage t_algorithm_lib:num nthroot.core.function set value [["x"],["^"],["a"],["-"],["b"]]
data modify storage t_algorithm_lib:num nthroot.core.function[2][] set from storage t_algorithm_lib:num nthroot.core.input.num
data modify storage t_algorithm_lib:num nthroot.core.function[4][] set from storage t_algorithm_lib:num nthroot.core.input.num2
##求导后
data modify storage t_algorithm_lib:num nthroot.core.function2 set value [["a1"],["*"],["x"],["^"],["a2"]]
execute store result score #tal.num.nthroot.num tal.str_parser run data get storage t_algorithm_lib:num nthroot.core.input.num
data modify storage t_algorithm_lib:num nthroot.core.function2[0][] set from storage t_algorithm_lib:num nthroot.core.input.num
execute store result storage t_algorithm_lib:num nthroot.core.function2[4][] double 1 run scoreboard players remove #tal.num.nthroot.num tal.str_parser 1
##x的list
data modify storage t_algorithm_lib:num nthroot.core.x_list set value [0.5]
scoreboard players set #tal.num.nthroot.core.i tal.str_parser 0
scoreboard players set #tal.num.nthroot.core.loop_end tal.str_parser 0
##4个数字转化
data modify storage t_algorithm_lib:num nthroot.core.function_num set value []

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num nthroot.core.function[4][0]
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:num/nthroot/core/main/loop_sp
data modify storage t_algorithm_lib:num nthroot.core.function_num append from storage t_algorithm_lib:num nthroot.temp.n1

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num nthroot.core.function2[0][0]
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:num/nthroot/core/main/loop_sp
data modify storage t_algorithm_lib:num nthroot.core.function_num append from storage t_algorithm_lib:num nthroot.temp.n1

##main 
## x1 = x - f(x)/f'(x)
##迭代
function t_algorithm_lib:num/nthroot/core/main/main



##[自定义] a,b (b为整数)
data modify storage t_algorithm_lib:num nthroot.core.input.num set value 2d
data modify storage t_algorithm_lib:num nthroot.core.input.num2 set value 2d