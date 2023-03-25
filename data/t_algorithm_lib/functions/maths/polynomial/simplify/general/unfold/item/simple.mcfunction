# tellraw @a [{"text":"多次 展开ing "},{"nbt":"polynomial.generalize.unfold.list_","storage":"t_algorithm_lib:maths","color":"#4EC990"},"\n",{"nbt":"polynomial.generalize.unfold.return","storage":"t_algorithm_lib:maths","color":"#4EC990"}]
# tellraw @a [{"text":"多次 展开ing指数"},{"nbt":"polynomial.generalize.unfold.list_[2]","storage":"t_algorithm_lib:maths","color":"#4EC990"},"\n",{"nbt":"polynomial.generalize.unfold.return","storage":"t_algorithm_lib:maths","color":"#4EC990"}]
### 移除 1
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-2]
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set from storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-1][0]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} if score #tal.maths.polynomial.is_remove tal.str_parser matches 3 if score #tal.maths.polynomial.list_count tal.str_parser matches 1 if score #tal.maths.polynomial.list_count2 tal.str_parser matches 2.. run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-1]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} if score #tal.maths.polynomial.is_remove tal.str_parser matches 3 if score #tal.maths.polynomial.list_count tal.str_parser matches 1 if score #tal.maths.polynomial.list_count2 tal.str_parser matches 2.. run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:[1]} if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"*"} run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-1]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:[1]} if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"*"} run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-1]

#指数
scoreboard players set #tal.maths.polynomial.is_remove tal.str_parser 0
scoreboard players set #tal.maths.polynomial.is_remove tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.is_num tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.is_num2 tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.is_num3 tal.str_parser 0
##判断数字
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[2][0][0]
execute if score #tal.str.elements_type_check tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.is_num tal.str_parser 1
#
execute store result score #tal.maths.polynomial.num2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[2][0][0]
execute if score #tal.maths.polynomial.num tal.str_parser matches 1 if score #tal.maths.polynomial.num2 tal.str_parser matches 0..1 if score #tal.maths.polynomial.temp.is_num tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.is_remove tal.str_parser 1
##若底数是 1or0
execute store result score #tal.maths.polynomial.num3 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0]
execute store result score #tal.maths.polynomial.num4 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0][0][0]
##判断数字
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[0][0][0]
execute if score #tal.str.elements_type_check tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.is_num2 tal.str_parser 1


scoreboard players set #tal.maths.polynomial.temp.fail tal.str_parser 1
execute unless score #tal.maths.polynomial.num2 tal.str_parser matches 0..1 run scoreboard players set #tal.maths.polynomial.temp.fail tal.str_parser 1
execute unless score #tal.maths.polynomial.temp.is_num tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.fail tal.str_parser 1

##指数为0
execute if score #tal.maths.polynomial.num2 tal.str_parser matches 0 if score #tal.maths.polynomial.num3 tal.str_parser matches 2.. run scoreboard players set #tal.maths.polynomial.is_remove tal.str_parser 3
# execute if score #tal.maths.polynomial.num2 tal.str_parser matches 0 if score #tal.maths.polynomial.num3 tal.str_parser matches 1 unless score #tal.maths.polynomial.num4 tal.str_parser matches 0 if score #tal.maths.polynomial.temp.is_num tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.is_remove tal.str_parser 3
execute if score #tal.maths.polynomial.num2 tal.str_parser matches 0 if score #tal.maths.polynomial.num3 tal.str_parser matches 1 if score #tal.maths.polynomial.temp.is_num tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.is_remove tal.str_parser 3
execute if score #tal.maths.polynomial.is_remove tal.str_parser matches 3 run scoreboard players set #tal.maths.polynomial.temp.fail tal.str_parser 0
execute if score #tal.maths.polynomial.is_remove tal.str_parser matches 3 run data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.return append value [1]



##指数为1
scoreboard players set #tal.maths.polynomial.add_parn tal.str_parser 1
execute if score #tal.maths.polynomial.num2 tal.str_parser matches 1 if score #tal.maths.polynomial.temp.is_num tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.add_parn tal.str_parser 0
execute if score #tal.maths.polynomial.num2 tal.str_parser matches 1 if score #tal.maths.polynomial.temp.is_num tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/add_

### 移除 1
execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.return
execute store result score #tal.maths.polynomial.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.generalize.unfold.list
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-2][0]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} if score #tal.maths.polynomial.is_remove tal.str_parser matches 3 if score #tal.maths.polynomial.list_count tal.str_parser matches 1 if score #tal.maths.polynomial.list_count2 tal.str_parser matches 2.. run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-1]
# execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} if score #tal.maths.polynomial.is_remove tal.str_parser matches 3 if score #tal.maths.polynomial.list_count tal.str_parser matches 1 if score #tal.maths.polynomial.list_count2 tal.str_parser matches 2.. run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.list[0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} if score #tal.maths.polynomial.is_remove tal.str_parser matches 3 run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-1]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"*"} if score #tal.maths.polynomial.is_remove tal.str_parser matches 3 run data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.return[-1]

##指数不为0&&1
scoreboard players set #tal.maths.polynomial.add_parn tal.str_parser 1
execute if score #tal.maths.polynomial.temp.fail tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/unfold/item/normal_add

