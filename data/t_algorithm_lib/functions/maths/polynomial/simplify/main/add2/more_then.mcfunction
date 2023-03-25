#个数
execute store result score #tal.maths.polynomial.add2.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.list[0][2]
#第一个 数字
execute store result score #tal.maths.polynomial.add2.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add2.list[0][2][0][0]
##判断数字
scoreboard players set #tal.maths.polynomial.add2.is_num1 tal.str_parser 0
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.str_parser run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.add2.list[0][2][0][0]
execute if score #tal.str.elements_type_check tal.str_parser matches 1 run scoreboard players set #tal.maths.polynomial.add2.true tal.str_parser 1
