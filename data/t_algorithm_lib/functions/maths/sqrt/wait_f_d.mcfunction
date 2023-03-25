data modify storage t_algorithm_lib:maths sqrt.temp.n1 set value []
data modify storage t_algorithm_lib:maths sqrt.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:maths/sqrt/loop_sp
data modify storage t_algorithm_lib:maths sqrt.n1 set from storage t_algorithm_lib:maths sqrt.temp.n1

data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:maths sqrt.n1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths sqrt.root
data modify storage t_algorithm_lib:num double_calculation.operation set value 1
function t_algorithm_lib:num/double_calculation/operation/start

data modify storage t_algorithm_lib:maths sqrt.temp.n1 set value []
data modify storage t_algorithm_lib:maths sqrt.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:maths/sqrt/loop_sp
data modify storage t_algorithm_lib:maths sqrt.n1 set from storage t_algorithm_lib:maths sqrt.temp.n1

data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:maths sqrt.n1
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set value ["0",".","5"]
data modify storage t_algorithm_lib:num double_calculation.operation set value 3
function t_algorithm_lib:num/double_calculation/operation/start


##2
scoreboard players remove #tal.maths.sqrt.time tal.str_parser 1
execute if score #tal.maths.sqrt.time tal.str_parser matches 0 run function t_algorithm_lib:maths/sqrt/end

execute if score #tal.maths.sqrt.time tal.str_parser matches 1.. run function t_algorithm_lib:maths/sqrt/continue
