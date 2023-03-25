data modify storage t_algorithm_lib:num nthroot.main.stack[-1].is_return set value 1

##计算 （牛顿迭代）
data modify storage t_algorithm_lib:num nthroot.main.stack[-1].return set value 1
scoreboard players set #tal.num.nthroot.is_z tal.str_parser 1

##1/指数
execute store result score #tal.num.nthroot.num1 tal.str_parser run data get storage t_algorithm_lib:num nthroot.main.stack[-1].num2
##底数
execute store result score #tal.num.nthroot.num2 tal.str_parser run data get storage t_algorithm_lib:num nthroot.main.stack[-1].num1
# tellraw @a ["指数: ",{"score":{"name": "#tal.num.nthroot.num1","objective": "tal.str_parser"},"color":"green"}]

# tellraw @a ["栈1 ",{"nbt":"nthroot.main.stack","storage":"t_algorithm_lib:num"}]

execute store result storage t_algorithm_lib:num nthroot.core.input.num double 1.0 run data get storage t_algorithm_lib:num nthroot.main.stack[-1].num2
execute store result storage t_algorithm_lib:num nthroot.core.input.num2 double 1.0 run data get storage t_algorithm_lib:num nthroot.main.stack[-1].num1
function t_algorithm_lib:num/nthroot/core/start

data modify storage t_algorithm_lib:num nthroot.main.stack[-1].return set from storage t_algorithm_lib:num nthroot.core.x_list[-1]