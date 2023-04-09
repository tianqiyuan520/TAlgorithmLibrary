##普通添加
data modify storage t_algorithm_lib:maths polynomial.add.list2[0][2] append from storage t_algorithm_lib:maths polynomial.add.list_power[0]
#符号取反
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.add.list_power[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run data modify storage t_algorithm_lib:maths polynomial.add.list2[0][2][-1] set value ['-']
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run data modify storage t_algorithm_lib:maths polynomial.add.list2[0][2][-1] set value ['+']


data remove storage t_algorithm_lib:maths polynomial.add.list_power[0]
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.add.list_power
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/item/add_loop
