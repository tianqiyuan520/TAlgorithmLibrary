##判断 是否两者指数为1项，且为数字. 做简单加法处理
scoreboard players set #tal.maths.polynomial.temp.success tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.fail tal.str_parser 1

execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add.list[0][2]
execute store result score #tal.maths.polynomial.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add.list2[0][2]

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.add.list[0][2][0][0]

execute if score #tal.str.elements_type_check tal.str_parser matches 1 if score #tal.maths.polynomial.list_count tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.success tal.str_parser 1
execute store success score #tal.str.elements_type_check tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.add.list2[0][2][0][0]

execute if score #tal.str.elements_type_check tal.str_parser matches 1 if score #tal.maths.polynomial.list_count2 tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.success2 tal.str_parser 1

execute if score #tal.maths.polynomial.temp.success tal.str_parser matches 1 if score #tal.maths.polynomial.temp.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.temp.fail tal.str_parser 0
execute if score #tal.maths.polynomial.temp.fail tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item/add

##普通添加
execute if score #tal.maths.polynomial.temp.fail tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.add.list2[0][2] append value ['-']
data modify storage t_algorithm_lib:maths polynomial.add.list_power set from storage t_algorithm_lib:maths polynomial.add.list[0][2]
execute if score #tal.maths.polynomial.temp.fail tal.str_parser matches 1 run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item/add_loop