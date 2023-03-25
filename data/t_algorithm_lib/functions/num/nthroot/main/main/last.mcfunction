execute store result score #tal.num.nthroot.num1 tal.str_parser run data get storage t_algorithm_lib:num nthroot.main.stack[-1].return
execute store result score #tal.num.nthroot.num2 tal.str_parser run data get storage t_algorithm_lib:num nthroot.main.stack[-1].last


##牛顿迭代
# tellraw @a ["指数: ",{"score":{"name": "#tal.num.nthroot.num2","objective": "tal.str_parser"},"color":"green"}]
# tellraw @a ["栈2 ",{"nbt":"nthroot.main.stack","storage":"t_algorithm_lib:num"}]


execute store result storage t_algorithm_lib:num nthroot.core.input.num double 1.0 run data get storage t_algorithm_lib:num nthroot.main.stack[-1].last
data modify storage t_algorithm_lib:num nthroot.core.input.num2 set from storage t_algorithm_lib:num nthroot.main.stack[-1].return

function t_algorithm_lib:num/nthroot/core/start

data modify storage t_algorithm_lib:num nthroot.main.stack[-2].return set from storage t_algorithm_lib:num nthroot.core.x_list[-1]

data remove storage t_algorithm_lib:num nthroot.main.stack[-1]


data modify storage t_algorithm_lib:num nthroot.main.stack[-1].is_return set value 1
# data modify storage t_algorithm_lib:num nthroot.main.stack[-1].return set value 1