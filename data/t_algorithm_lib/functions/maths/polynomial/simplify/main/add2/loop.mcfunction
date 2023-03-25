data modify storage t_algorithm_lib:maths polynomial.add2.result append from storage t_algorithm_lib:maths polynomial.add2.list[0]
##判断
scoreboard players set #tal.maths.polynomial.add2.num tal.str_parser 0
scoreboard players set #tal.maths.polynomial.add2.num2 tal.str_parser 0
scoreboard players set #tal.maths.polynomial.add2.is_num1 tal.str_parser 0
scoreboard players set #tal.maths.polynomial.add2.true tal.str_parser 0
#条件：第一个是否为数字
#个数
execute store result score #tal.maths.polynomial.add2.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.list[0]
#第一个 数字
execute store result score #tal.maths.polynomial.add2.num2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.list[0][0][0]
##判断数字
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.add2.list[0][0][0]
execute if score #tal.str.elements_type_check tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.add2.is_num1 tal.str_parser 1
##只有一个
execute if score #tal.maths.polynomial.add2.num tal.str_parser matches 1 if score #tal.maths.polynomial.add2.is_num1 tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.add2.true tal.str_parser 1
##
execute if score #tal.maths.polynomial.add2.num tal.str_parser matches 2.. if score #tal.maths.polynomial.add2.is_num1 tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/add2/more_then
execute if score #tal.maths.polynomial.add2.true tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/add2/true_num


# tellraw @a [{"text":"遍历中.."},{"nbt":"polynomial.add2.list[0]","storage":"t_algorithm_lib:maths","color":"#4EC990"},"\n",{"nbt":"polynomial.add2.nums","storage":"t_algorithm_lib:maths","color":"#4EC990"},"\n",{"nbt":"polynomial.add2.result","storage":"t_algorithm_lib:maths","color":"#4EC990"}]

data remove storage t_algorithm_lib:maths polynomial.add2.list[0]
execute store result score #tal.maths.polynomial.add2.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.list
execute if score #tal.maths.polynomial.add2.num tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add2/loop