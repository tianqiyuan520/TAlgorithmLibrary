##迭代
# data remove storage t_algorithm_lib:num double_calculation.temp.num1[-1]
# data modify storage t_algorithm_lib:maths sqrt.num set from storage t_algorithm_lib:num double_calculation.temp.num1
# data modify storage t_algorithm_lib:maths sqrt.root set from storage t_algorithm_lib:num double_calculation.temp.result

# data modify storage t_algorithm_lib:maths sqrt.temp.n1 set value []
# data modify storage t_algorithm_lib:maths sqrt.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.num1
# function t_algorithm_lib:maths/sqrt/loop_sp
# data modify storage t_algorithm_lib:maths sqrt.num set from storage t_algorithm_lib:maths sqrt.temp.n1
# data modify storage t_algorithm_lib:maths sqrt.n1 set from storage t_algorithm_lib:maths sqrt.temp.n1

data modify storage t_algorithm_lib:maths sqrt.temp.n1 set value []
data modify storage t_algorithm_lib:maths sqrt.temp.n3 set from storage t_algorithm_lib:num double_calculation.temp.result
function t_algorithm_lib:maths/sqrt/loop_sp
data modify storage t_algorithm_lib:maths sqrt.root set from storage t_algorithm_lib:maths sqrt.temp.n1
data modify storage t_algorithm_lib:maths sqrt.n2 set from storage t_algorithm_lib:maths sqrt.temp.n1

# ### root = (1 / 2) * (root + (n / root))
data modify storage t_algorithm_lib:num double_calculation.temp.num1 set from storage t_algorithm_lib:maths sqrt.num
data modify storage t_algorithm_lib:num double_calculation.temp.num2 set from storage t_algorithm_lib:maths sqrt.root
data modify storage t_algorithm_lib:num double_calculation.operation set value 4
# schedule function t_algorithm_lib:maths/sqrt/wait_f_d 2t replace
scoreboard players set #tal.num.hpc.division_continue tal.str_parser 1
scoreboard players set #tal.num.hpc.division_precision tal.str_parser 8
scoreboard players set #tal.num.hpc.ignore_eight tal.str_parser 1

function t_algorithm_lib:num/double_calculation/operation/start
function t_algorithm_lib:maths/sqrt/wait_f_d

