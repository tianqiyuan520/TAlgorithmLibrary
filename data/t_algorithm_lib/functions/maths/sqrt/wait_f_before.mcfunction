##迭代
# data modify storage t_algorithm_lib:maths sqrt.temp.n1 set value []
# data modify storage t_algorithm_lib:maths sqrt.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
# function t_algorithm_lib:maths/sqrt/loop_sp
# data modify storage t_algorithm_lib:maths sqrt.num set from storage t_algorithm_lib:maths sqrt.temp.n1

data modify storage t_algorithm_lib:num double_calculation set value {num1:0,num2:0,operation:4,temp:{num1:[],num2:[]}}

# execute store result storage t_algorithm_lib:array double_to_array.num int 1 run scoreboard players get #tal.maths.sqrt.input tal.input
data modify storage t_algorithm_lib:array double_to_array.num set from storage t_algorithm_lib:maths sqrt.input
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:maths sqrt.temp.n1 set value []
data modify storage t_algorithm_lib:maths sqrt.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:maths/sqrt/loop_sp
data modify storage t_algorithm_lib:maths sqrt.num set from storage t_algorithm_lib:maths sqrt.temp.n1
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:maths sqrt.temp.n1

execute store result storage t_algorithm_lib:array double_to_array.num int 1 run scoreboard players get #tal.maths.sqrt.num1 tal.input
function t_algorithm_lib:array/double_to_array/start
data modify storage t_algorithm_lib:maths sqrt.temp.n1 set value []
data modify storage t_algorithm_lib:maths sqrt.temp.n3 set from storage t_algorithm_lib:array double_to_array.result
function t_algorithm_lib:maths/sqrt/loop_sp
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths sqrt.temp.n1

scoreboard players set #tal.num.hpc.division_continue tal.input 1
scoreboard players set #tal.num.hpc.division_precision tal.input 8
scoreboard players set #tal.num.hpc.ignore_eight tal.input 1

function t_algorithm_lib:num/double_calculation/operation/start

function t_algorithm_lib:maths/sqrt/wait_f