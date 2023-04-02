##判断 是否两者指数为1项，且为数字. 做简单加法处理

scoreboard players set #tal.maths.polynomial.temp.success tal.input 0
scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 0
scoreboard players set #tal.maths.polynomial.temp.fail tal.input 1

execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][2]
execute store result score #tal.maths.polynomial.list_count2 tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.list2[0][2]

data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][2][0][0]
execute if score #tal.str.elements_type_check tal.input matches 1 if score #tal.maths.polynomial.list_count tal.input matches 1 run scoreboard players set #tal.maths.polynomial.temp.success tal.input 1

execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.generalize.dedup.list2[0][2][0][0]
execute if score #tal.str.elements_type_check tal.input matches 1 if score #tal.maths.polynomial.list_count2 tal.input matches 1 run scoreboard players set #tal.maths.polynomial.temp.success2 tal.input 1

execute if score #tal.maths.polynomial.temp.success tal.input matches 1 if score #tal.maths.polynomial.temp.success2 tal.input matches 1 run scoreboard players set #tal.maths.polynomial.temp.fail tal.input 0
execute if score #tal.maths.polynomial.temp.fail tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/general/dedup/main/add
execute if score #tal.maths.polynomial.temp.fail tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][2] append value ['+']

execute if score #tal.maths.polynomial.temp.fail tal.input matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/dedup/main/add_loop