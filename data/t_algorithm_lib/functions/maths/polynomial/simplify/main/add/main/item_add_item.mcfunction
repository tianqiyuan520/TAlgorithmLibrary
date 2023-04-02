#结果 数组
data modify storage t_algorithm_lib:maths polynomial.add.temp.result set value []
#共同 数组
data modify storage t_algorithm_lib:maths polynomial.add.temp.gcd set value []


function t_algorithm_lib:maths/polynomial/simplify/main/add/main/loop
scoreboard players add #tal.maths.polynomial.is_simple tal.input 1
#如果没有共同
# execute if score #tal.maths.polynomial.temp.check_end tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/no_matches
# tellraw @a [{"text":"result"},{"nbt":"polynomial.add.temp.result","storage":"t_algorithm_lib:maths","color":"#6888C6"},{"text":"\n"},"gcd: ",{"nbt":"polynomial.add.temp.gcd","storage":"t_algorithm_lib:maths","color":"#6888E6"},{"text":"\n"},"2 ",{"nbt":"polynomial.add.list2","storage":"t_algorithm_lib:maths","color":"#6888E8"}]
##添加result，gcd
data modify storage t_algorithm_lib:maths polynomial.temp.list prepend value []
function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item_add_result_and_gcd
# execute if score #tal.maths.polynomial.is_simple tal.input matches 2.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item_add_rsult_and_gcd2

