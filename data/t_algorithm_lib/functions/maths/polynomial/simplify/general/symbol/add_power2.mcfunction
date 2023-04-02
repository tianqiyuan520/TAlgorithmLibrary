##判断除法 取反
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data2[-2][0]
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.data2[-1][2]
data modify storage t_algorithm_lib:array elements_type_check.list2 set value [1]
execute store success score #tal.str.elements_type_check tal.input run data modify storage t_algorithm_lib:array elements_type_check.list2 append from storage t_algorithm_lib:maths polynomial.temp.data2[-1][2][0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'/'} if score #tal.maths.polynomial.list_count tal.input matches 1 if score #tal.str.elements_type_check tal.input matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add_power3









