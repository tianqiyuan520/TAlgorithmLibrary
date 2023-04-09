data modify storage t_algorithm_lib:num double_calculation.operation set value 2
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:num nthroot.core.cal_list2[1]
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:num nthroot.core.cal_list2[0]
function t_algorithm_lib:num/double_calculation/operation/start
##除新值
data modify storage t_algorithm_lib:num double_calculation.operation set value 4

data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:num/nthroot/core/main/loop_sp

data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:num nthroot.temp.n1

data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:num nthroot.core.cal_list2[1]
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1
scoreboard players set #tal.num.hpc.division_continue tal.input 1
scoreboard players set #tal.num.hpc.division_precision tal.input 10
function t_algorithm_lib:num/double_calculation/operation/start

##精度10^-4
data modify storage t_algorithm_lib:num double_calculation.operation set value 2
data modify storage t_algorithm_lib:num nthroot.temp.n1 set value []
data modify storage t_algorithm_lib:num nthroot.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:num/nthroot/core/main/loop_sp

data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:num nthroot.temp.n1

scoreboard players set #tal.num.hpc.ignore_eight tal.input 1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set value ["0",".","0","0","0","1"]
function t_algorithm_lib:num/double_calculation/operation/start

##[自定义输入]double_array
scoreboard players operation #tal.array.DAToDouble.negative tal.input = #tal.num.hpc.num3_pn tal.input
data modify storage t_algorithm_lib:array double_array_to_double.input set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:array/double_array_to_double/start

execute store result score #tal.num.nthroot.core.num tal.input run data get storage t_algorithm_lib:array double_array_to_double.result 10000
execute if score #tal.num.nthroot.core.num tal.input matches ..0 run scoreboard players set #tal.num.nthroot.core.loop_end tal.input 1
