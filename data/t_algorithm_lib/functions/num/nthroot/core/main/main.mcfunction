##main 
## x1 = x - f(x)/f'(x)
##迭代

## x1 = x - f(x)/f'(x)
data modify storage t_algorithm_lib:num nthroot.core.cal_list set value []
data modify storage t_algorithm_lib:num nthroot.core.cal_list2 set value []
##解析一
data modify storage t_algorithm_lib:string function_parser.temp.list[0][0] set from storage t_algorithm_lib:num nthroot.core.x_list[-1]
execute store result score #tal.num.temp.power tal.input run data get storage t_algorithm_lib:num nthroot.core.function[2][0]
function t_algorithm_lib:string/function_parser/parser/start_from_x/power/num_any_power/start
##减
data modify storage t_algorithm_lib:num double_calculation.operation set value 2

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num temp.return
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:num/nthroot/core/main/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:num nthroot.temp.n1

data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:num nthroot.core.function_num[0]
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1
function t_algorithm_lib:num/double_calculation/operation/start
data modify storage t_algorithm_lib:num nthroot.core.cal_list append from storage t_algorithm_lib:num double_calculation.temp.result
execute if score #tal.num.hpc.num3_pn tal.input matches -1 run data modify storage t_algorithm_lib:num nthroot.core.cal_list[-1] prepend value ['-'] 

# data modify storage t_algorithm_lib:string function_parser.arg.x set from storage t_algorithm_lib:num nthroot.core.x_list[-1]
# ##解析成计算式1
# # data modify storage t_algorithm_lib:string function_parser.input set from storage t_algorithm_lib:num nthroot.core.function
# data modify storage t_algorithm_lib:string function_parser.separation set from storage t_algorithm_lib:num nthroot.core.function
# scoreboard players set #tal.str.fuc_p.show tal.input 0
# scoreboard players set #tal.str.func_p.scale tal.input 1
# function t_algorithm_lib:string/function_parser/parser/read/start

# data modify storage t_algorithm_lib:num nthroot.core.cal_list append from storage t_algorithm_lib:string function_parser.temp.list[0][0]
##解析二
data modify storage t_algorithm_lib:string function_parser.temp.list[0][0] set from storage t_algorithm_lib:num nthroot.core.x_list[-1]
execute store result score #tal.num.temp.power tal.input run data get storage t_algorithm_lib:num nthroot.core.function2[4][0]
function t_algorithm_lib:string/function_parser/parser/start_from_x/power/num_any_power/start
##乘
data modify storage t_algorithm_lib:num double_calculation.operation set value 3

data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:num nthroot.core.function_num[1]

data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num temp.return
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:num/nthroot/core/main/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:num nthroot.temp.n1
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1
function t_algorithm_lib:num/double_calculation/operation/start
data modify storage t_algorithm_lib:num nthroot.core.cal_list append from storage t_algorithm_lib:num double_calculation.temp.result
execute if score #tal.num.hpc.num3_pn tal.input matches -1 run data modify storage t_algorithm_lib:num nthroot.core.cal_list[-1] prepend value ['-'] 
# data modify storage t_algorithm_lib:string function_parser.arg.x set from storage t_algorithm_lib:num nthroot.core.x_list[-1]
# ##解析成计算式2
# data modify storage t_algorithm_lib:string function_parser.separation set from storage t_algorithm_lib:num nthroot.core.function2
# scoreboard players set #tal.str.fuc_p.show tal.input 0
# scoreboard players set #tal.str.func_p.scale tal.input 1
# function t_algorithm_lib:string/function_parser/parser/read/start
# data modify storage t_algorithm_lib:num nthroot.core.cal_list append from storage t_algorithm_lib:string function_parser.temp.list[0][0]
##除
data modify storage t_algorithm_lib:num double_calculation.operation set value 4

data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:num nthroot.core.cal_list[0]
function t_algorithm_lib:num/nthroot/core/main/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:num nthroot.temp.n1

data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:num nthroot.core.cal_list[1]
function t_algorithm_lib:num/nthroot/core/main/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:num nthroot.temp.n1
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1
scoreboard players set #tal.num.hpc.division_continue tal.input 1
scoreboard players set #tal.num.hpc.division_precision tal.input 12
function t_algorithm_lib:num/double_calculation/operation/start



## 减
data modify storage t_algorithm_lib:num double_calculation.operation set value 2
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:num nthroot.core.x_list[-1]
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:num/nthroot/core/main/loop_sp
data modify storage t_algorithm_lib:num nthroot.core.cal_list2 append from storage t_algorithm_lib:num nthroot.temp.n1

data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:num nthroot.temp.n1

data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:num/nthroot/core/main/loop_sp
execute if score #tal.num.hpc.num3_pn tal.input matches -1 run data modify storage t_algorithm_lib:num nthroot.temp.n1 prepend value "-"
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:num nthroot.temp.n1
function t_algorithm_lib:num/double_calculation/operation/start

data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:num/nthroot/core/main/loop_sp
data modify storage t_algorithm_lib:num nthroot.core.cal_list2 append from storage t_algorithm_lib:num nthroot.temp.n1
##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start
data modify storage t_algorithm_lib:num nthroot.core.x_list append from storage t_algorithm_lib:array double_array_to_double.result

##误差判断error
execute if score #tal.num.nthroot.core.i tal.input matches 4.. run function t_algorithm_lib:num/nthroot/core/main/error

scoreboard players add #tal.num.nthroot.core.i tal.input 1
execute if score #tal.num.nthroot.core.loop_end tal.input matches 0 if score #tal.num.nthroot.core.i tal.input matches ..100 run function t_algorithm_lib:num/nthroot/core/main/main