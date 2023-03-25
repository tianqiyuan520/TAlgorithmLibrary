##乘法 多数字*多数字
##[1,3] * [2,0] = [2,6,0]
data modify storage t_algorithm_lib:num double_calculation.mul.num1 set from storage t_algorithm_lib:num double_calculation.temp.num1
data modify storage t_algorithm_lib:num double_calculation.mul.num2 set from storage t_algorithm_lib:num double_calculation.temp.num2

##进行补位
# function t_algorithm_lib:num/double_calculation/operation/complement/start

#个位数
scoreboard players set #tal.num.hpc.mul_extra tal.str_parser 0
scoreboard players set #tal.num.hpc.mul_zero_time tal.str_parser 0
scoreboard players set #tal.num.hpc.mul_zero_time_ tal.str_parser 0
#结果
data modify storage t_algorithm_lib:num double_calculation.mul.num1_ set from storage t_algorithm_lib:num double_calculation.mul.num1

data modify storage t_algorithm_lib:num double_calculation.mul_result set value []
#后续需加法
data modify storage t_algorithm_lib:num double_calculation.mul_result2 set value []
#
data modify storage t_algorithm_lib:num double_calculation.mul_result3 set value []
#最终结果
data modify storage t_algorithm_lib:num double_calculation.mul_result4 set value []
#拷贝 1-9乘法结果（由于优化算法）
data modify storage t_algorithm_lib:num double_calculation.mul_results set value {list:{1:[[],[0]],2:[[],[0]],3:[[],[0]],4:[[],[0]],5:[[],[0]],6:[[],[0]],7:[[],[0]],8:[[],[0]],9:[[],[0]]}}
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.1[0] set from storage t_algorithm_lib:num double_calculation.mul.num1
##先调用x*(1-9):
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.2[0] set from storage t_algorithm_lib:num double_calculation.mul.num1
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.2[1] set from storage t_algorithm_lib:num double_calculation.mul.num1
#
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num1 set from storage t_algorithm_lib:num double_calculation.mul.num1
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num2 set value [3]
function t_algorithm_lib:num/double_calculation/operation/mul_simple/start
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.3[0] set from storage t_algorithm_lib:num double_calculation.mul_simple_result
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.3[1] set from storage t_algorithm_lib:num double_calculation.mul_simple_result2
#
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num1 set from storage t_algorithm_lib:num double_calculation.mul.num1
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num2 set value [4]
function t_algorithm_lib:num/double_calculation/operation/mul_simple/start
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.4[0] set from storage t_algorithm_lib:num double_calculation.mul_simple_result
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.4[1] set from storage t_algorithm_lib:num double_calculation.mul_simple_result2
#
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num1 set from storage t_algorithm_lib:num double_calculation.mul.num1
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num2 set value [5]
function t_algorithm_lib:num/double_calculation/operation/mul_simple/start
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.5[0] set from storage t_algorithm_lib:num double_calculation.mul_simple_result
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.5[1] set from storage t_algorithm_lib:num double_calculation.mul_simple_result2
#
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num1 set from storage t_algorithm_lib:num double_calculation.mul.num1
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num2 set value [6]
function t_algorithm_lib:num/double_calculation/operation/mul_simple/start
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.6[0] set from storage t_algorithm_lib:num double_calculation.mul_simple_result
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.6[1] set from storage t_algorithm_lib:num double_calculation.mul_simple_result2
#
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num1 set from storage t_algorithm_lib:num double_calculation.mul.num1
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num2 set value [7]
function t_algorithm_lib:num/double_calculation/operation/mul_simple/start
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.7[0] set from storage t_algorithm_lib:num double_calculation.mul_simple_result
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.7[1] set from storage t_algorithm_lib:num double_calculation.mul_simple_result2
#
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num1 set from storage t_algorithm_lib:num double_calculation.mul.num1
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num2 set value [8]
function t_algorithm_lib:num/double_calculation/operation/mul_simple/start
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.8[0] set from storage t_algorithm_lib:num double_calculation.mul_simple_result
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.8[1] set from storage t_algorithm_lib:num double_calculation.mul_simple_result2
#
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num1 set from storage t_algorithm_lib:num double_calculation.mul.num1
data modify storage t_algorithm_lib:num double_calculation.mul_simple.num2 set value [9]
function t_algorithm_lib:num/double_calculation/operation/mul_simple/start
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.9[0] set from storage t_algorithm_lib:num double_calculation.mul_simple_result
data modify storage t_algorithm_lib:num double_calculation.mul_results.list.9[1] set from storage t_algorithm_lib:num double_calculation.mul_simple_result2


##逆序 循环
execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.mul.num2

execute if score #tal.num.hpc.list_count1 tal.str_parser matches 1.. run function t_algorithm_lib:num/double_calculation/operation/mul/loop_mul_num

##读取最终结果，并相加
function t_algorithm_lib:num/double_calculation/operation/mul/add_loop

##是否加0.000001
# data modify storage t_algorithm_lib:num double_calculation.add_result set from storage t_algorithm_lib:num double_calculation.mul_result3[0]

# execute store result score #tal.num.hpc.list_count1 tal.str_parser run data get storage t_algorithm_lib:num double_calculation.mul_result3[0][-2]
# execute if score #tal.num.hpc.list_count1 tal.str_parser matches 9 run data modify storage t_algorithm_lib:num double_calculation.add.num1 set from storage t_algorithm_lib:num double_calculation.mul_result3[0]
# execute if score #tal.num.hpc.list_count1 tal.str_parser matches 9 run data modify storage t_algorithm_lib:num double_calculation.add.num2 set value [1,0,0,0,0,0,0,0,0,0,0]
# execute if score #tal.num.hpc.list_count1 tal.str_parser matches 9 run function t_algorithm_lib:num/double_calculation/operation/add/start
# data modify storage t_algorithm_lib:num double_calculation.mul_result3[0] set from storage t_algorithm_lib:num double_calculation.add_result



data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set from storage t_algorithm_lib:num double_calculation.mul_result3[0]

function t_algorithm_lib:num/double_calculation/operation/remove_l/loop


##读取 小数点
data modify storage t_algorithm_lib:num double_calculation.add_point.list set from storage t_algorithm_lib:num double_calculation.remove_l.num1
scoreboard players operation #tal.num.hpc.add_point tal.str_parser = #tal.num.hpc.num1_p tal.str_parser
scoreboard players operation #tal.num.hpc.add_point tal.str_parser += #tal.num.hpc.num2_p tal.str_parser

function t_algorithm_lib:num/double_calculation/operation/add_point/start
data modify storage t_algorithm_lib:num double_calculation.mul_result4 set from storage t_algorithm_lib:num double_calculation.add_point.list

data modify storage t_algorithm_lib:num double_calculation.temp.result set from storage t_algorithm_lib:num double_calculation.add_point.result

# data modify storage t_algorithm_lib:num double_calculation set value {num1:0.33333333333333333333333333333333,num2:3,operation:3,temp:{num1:[],num2:[]},Command:"say ok"}
