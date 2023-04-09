##加法
##提取公因式
##判断是否 数字+-数字 且数字的指数为1/0
scoreboard players set #tal.maths.polynomial.temp.success tal.input 0
scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 0
scoreboard players set #tal.maths.polynomial.temp.success3 tal.input 0
scoreboard players set #tal.maths.polynomial.temp.fail tal.input 0
##判断数字
execute store result score #tal.maths.polynomial.temp.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list[0][0]
execute store result score #tal.maths.polynomial.temp.list_count2 tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list[0][0][2]
execute store result score #tal.maths.polynomial.temp.num tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list[0][0][0][0]
#判断
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.temp.list[0][0][2][0]
execute store success score #tal.str.elements_type_check2 tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.temp.list[0][0][2][0][0]
execute if score #tal.str.elements_type_check tal.input matches 1 if score #tal.str.elements_type_check2 tal.input matches 1 if score #tal.maths.polynomial.temp.list_count tal.input matches 1 if score #tal.maths.polynomial.temp.list_count2 tal.input matches 1 if score #tal.maths.polynomial.temp.num tal.input matches 0..1 run scoreboard players set #tal.maths.polynomial.temp.success tal.input 1
##(默认)项+项
scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set from storage t_algorithm_lib:maths polynomial.temp.list[1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"+"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"-"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 1
##

##判断数字
execute store result score #tal.maths.polynomial.temp.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list[2][0]
execute store result score #tal.maths.polynomial.temp.list_count2 tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list[2][0][2]
execute store result score #tal.maths.polynomial.temp.num tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list[2][0][0][0]
#判断
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.temp.list[2][0][2][0]
execute store success score #tal.str.elements_type_check2 tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.temp.list[2][0][2][0][0]
execute if score #tal.str.elements_type_check tal.input matches 1 if score #tal.str.elements_type_check2 tal.input matches 1 if score #tal.maths.polynomial.temp.list_count tal.input matches 1 if score #tal.maths.polynomial.temp.list_count2 tal.input matches 1 if score #tal.maths.polynomial.temp.num tal.input matches 0..1 run scoreboard players set #tal.maths.polynomial.temp.success3 tal.input 1

execute unless score #tal.maths.polynomial.temp.success tal.input matches 1 run scoreboard players set #tal.maths.polynomial.temp.fail tal.input 1
execute unless score #tal.maths.polynomial.temp.success3 tal.input matches 1 run scoreboard players set #tal.maths.polynomial.temp.fail tal.input 1
execute if score #tal.maths.polynomial.temp.fail tal.input matches 0 if score #tal.maths.polynomial.temp.success2 tal.input matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/num_add
execute if score #tal.maths.polynomial.temp.fail tal.input matches 1 if score #tal.maths.polynomial.temp.success2 tal.input matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/start


scoreboard players remove #tal.maths.polynomial.total.list_count tal.input 1
execute if score #tal.maths.polynomial.total.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/start
