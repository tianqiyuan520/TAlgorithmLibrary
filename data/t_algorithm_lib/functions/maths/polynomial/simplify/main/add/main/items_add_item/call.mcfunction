#调用 单项的函数
data modify storage t_algorithm_lib:maths polynomial.add.list set from storage t_algorithm_lib:maths polynomial.items.add.list[0]
# tellraw @a [{"text":"当前要处理的函数："},{"nbt":"polynomial.add.list","storage":"t_algorithm_lib:maths","color":"#6888C6"}]

#结果 数组
data modify storage t_algorithm_lib:maths polynomial.add.temp.result set value []
#共同 数组
data modify storage t_algorithm_lib:maths polynomial.add.temp.gcd set value []

function t_algorithm_lib:maths/polynomial/simplify/main/add/main/loop

# tellraw @a [{"text":"result"},{"nbt":"polynomial.add.temp.result","storage":"t_algorithm_lib:maths","color":"#6888C6"},{"text":"\n"},"gcd: ",{"nbt":"polynomial.add.temp.gcd","storage":"t_algorithm_lib:maths","color":"#6888E6"},{"text":"\n"},"2 ",{"nbt":"polynomial.add.list2","storage":"t_algorithm_lib:maths","color":"#6888E8"}]


##添加result，gcd
# data modify storage t_algorithm_lib:maths polynomial.temp.list prepend value []
# function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item_add_result_and_gcd

# tellraw @a [{"text":"new "},{"nbt":"polynomial.temp.list","storage":"t_algorithm_lib:maths","color":"#DCD079"}]
