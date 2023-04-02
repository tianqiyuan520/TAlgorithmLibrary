##该项里的loop判断

tellraw @a [{"text":"test "},{"nbt":"polynomial.add.temp.list[0]","storage":"t_algorithm_lib:maths","color":"#6888C6"},{"nbt":"polynomial.add.temp.list2[0][0]","storage":"t_algorithm_lib:maths","color":"#6888E6"}]

##判断符号
scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.polynomial.add.temp.list[0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 1

##如果不是符号，则循环判断，类似去重
execute store result score #tal.maths.polynomial.list_count2 tal.input run data get storage t_algorithm_lib:maths polynomial.add.temp.list2
scoreboard players set #tal.maths.polynomial.temp.is_gcd tal.input 0
function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item/loop2
#如果有重复，则添加到gcd函数中
execute if score #tal.maths.polynomial.temp.is_gcd tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.add.temp.gcd append from storage t_algorithm_lib:maths polynomial.add.temp.list
execute if score #tal.maths.polynomial.temp.is_gcd tal.input matches 1 run scoreboard players set #tal.maths.polynomial.temp.check_end tal.input 1
#如果无重复，则添加到result函数中
execute if score #tal.maths.polynomial.temp.is_gcd tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.add.temp.result append from storage t_algorithm_lib:maths polynomial.add.temp.list
