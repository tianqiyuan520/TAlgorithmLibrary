##该项里的loop判断
data modify storage t_algorithm_lib:maths polynomial.add.list__ set from storage t_algorithm_lib:maths polynomial.add.list[0]
# tellraw @a [{"text":"当前 "},{"nbt":"polynomial.add.list[0]","storage":"t_algorithm_lib:maths","color":"#6888C6"}]

##判断符号
scoreboard players set #tal.maths.polynomial.is_symbol tal.str_parser 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.add.list[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} run scoreboard players set #tal.maths.polynomial.is_symbol tal.str_parser 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"/"} run scoreboard players set #tal.maths.polynomial.is_symbol tal.str_parser 1

##如果不是符号，则循环判断，类似去重
execute store result score #tal.maths.polynomial.time tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add.list2
scoreboard players set #tal.maths.polynomial.temp.is_gcd tal.str_parser 0
##第一项 多次单项
# execute if score #tal.maths.polynomial.is_symbol tal.str_parser matches 0 if score #tal.maths.polynomial.is_simple tal.str_parser matches 1.. run data modify storage t_algorithm_lib:maths polynomial.add.list[0] set from storage t_algorithm_lib:maths polynomial.add.list[0][0]
execute if score #tal.maths.polynomial.is_symbol tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item/loop2


#如果有重复，则添加到gcd函数中
execute if score #tal.maths.polynomial.temp.is_gcd tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.add.temp.gcd append from storage t_algorithm_lib:maths polynomial.add.list[0]
execute if score #tal.maths.polynomial.temp.is_gcd tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.check_end tal.str_parser 1
#如果无重复，则添加到result函数中
execute if score #tal.maths.polynomial.temp.is_gcd tal.str_parser matches 0 if score #tal.maths.polynomial.is_symbol tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.add.temp.result append from storage t_algorithm_lib:maths polynomial.add.list__



data remove storage t_algorithm_lib:maths polynomial.add.list[0]
execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add.list
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/loop