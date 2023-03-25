##求乘数
data modify storage t_algorithm_lib:num double_calculation.division.num3 set from storage t_algorithm_lib:num double_calculation.division.num2
scoreboard players set #tal.num.hpc.division_mul_1 tal.str_parser 0
data modify storage t_algorithm_lib:num double_calculation.division.num4 set value []

# tellraw @a [{"nbt":"double_calculation.division.num1","storage": "t_algorithm_lib:num","color": "red"}]


##进行补位
# function t_algorithm_lib:num/double_calculation/operation/complement/start

#乘数循环1-9
scoreboard players set #tal.num.hpc.division_mul_time tal.str_parser 0

execute if score #tal.num.hpc.division_mul_time tal.str_parser matches ..8 run function t_algorithm_lib:num/double_calculation/operation/division/get_mul_loop


##循环结束 将 被除数减去
execute store result storage t_algorithm_lib:num double_calculation.division_result[-1] int 1 run scoreboard players get #tal.num.hpc.division_mul_1 tal.str_parser
##减法
data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set from storage t_algorithm_lib:num double_calculation.division.num4
function t_algorithm_lib:num/double_calculation/operation/remove_l/loop

data modify storage t_algorithm_lib:num double_calculation.subtraction.num1 set from storage t_algorithm_lib:num double_calculation.division.num1
data modify storage t_algorithm_lib:num double_calculation.subtraction.num2 set from storage t_algorithm_lib:num double_calculation.remove_l.num1
function t_algorithm_lib:num/double_calculation/operation/subtraction/start

data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set from storage t_algorithm_lib:num double_calculation.subtraction_result

function t_algorithm_lib:num/double_calculation/operation/remove_l/loop

data remove storage t_algorithm_lib:num double_calculation.list_check.char
data modify storage t_algorithm_lib:num double_calculation.list_check.char set from storage t_algorithm_lib:num double_calculation.remove_l.num1


execute if data storage t_algorithm_lib:num double_calculation.list_check{char:[]} run data modify storage t_algorithm_lib:num double_calculation.remove_l.num1 set value [0]



# tellraw @a [{"score":{"name": "#tal.num.hpc.division_mul_1","objective": "tal.str_parser"}},{"nbt":"double_calculation.division.num1","storage": "t_algorithm_lib:num","color": "red"},{"nbt":"double_calculation.division.num4","storage": "t_algorithm_lib:num","color": "bule"},{"nbt":"double_calculation.remove_l.num1","storage": "t_algorithm_lib:num","color": "yellow"}]


data modify storage t_algorithm_lib:num double_calculation.division.num1 set from storage t_algorithm_lib:num double_calculation.remove_l.num1
