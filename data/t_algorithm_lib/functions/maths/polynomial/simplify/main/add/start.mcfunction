##加法
##提取公因式
##判断是否 数字+-数字 且数字的指数为1/0
scoreboard players set #tal.maths.polynomial.temp.success tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.success3 tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.fail tal.str_parser 0
##判断数字
execute store result score #tal.maths.polynomial.temp.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[0][0]
execute store result score #tal.maths.polynomial.temp.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[0][0][2]
execute store result score #tal.maths.polynomial.temp.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[0][0][0][0]
#判断
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.temp.list[0][0][2][0]
execute store success score #tal.str.elements_type_check2 tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.temp.list[0][0][2][0][0]
execute if score #tal.str.elements_type_check tal.str_parser matches 1 if score #tal.str.elements_type_check2 tal.str_parser matches 1 if score #tal.maths.polynomial.temp.list_count tal.str_parser matches 1 if score #tal.maths.polynomial.temp.list_count2 tal.str_parser matches 1 if score #tal.maths.polynomial.temp.num tal.str_parser matches 0..1 run scoreboard players set #tal.maths.polynomial.temp.success tal.str_parser 1
##(默认)项+项
scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char2 set from storage t_algorithm_lib:maths polynomial.temp.list[1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"+"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 1
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"-"} run scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 1
##

##判断数字
execute store result score #tal.maths.polynomial.temp.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[2][0]
execute store result score #tal.maths.polynomial.temp.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[2][0][2]
execute store result score #tal.maths.polynomial.temp.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[2][0][0][0]
#判断
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.temp.list[2][0][2][0]
execute store success score #tal.str.elements_type_check2 tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.temp.list[2][0][2][0][0]
execute if score #tal.str.elements_type_check tal.str_parser matches 1 if score #tal.str.elements_type_check2 tal.str_parser matches 1 if score #tal.maths.polynomial.temp.list_count tal.str_parser matches 1 if score #tal.maths.polynomial.temp.list_count2 tal.str_parser matches 1 if score #tal.maths.polynomial.temp.num tal.str_parser matches 0..1 run scoreboard players set #tal.maths.polynomial.temp.success3 tal.str_parser 1

execute unless score #tal.maths.polynomial.temp.success tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.fail tal.str_parser 1
execute unless score #tal.maths.polynomial.temp.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.fail tal.str_parser 1
execute if score #tal.maths.polynomial.temp.fail tal.str_parser matches 0 if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/num_add
execute if score #tal.maths.polynomial.temp.fail tal.str_parser matches 1 if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/start


scoreboard players remove #tal.maths.polynomial.total.list_count tal.str_parser 1
execute if score #tal.maths.polynomial.total.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/start
