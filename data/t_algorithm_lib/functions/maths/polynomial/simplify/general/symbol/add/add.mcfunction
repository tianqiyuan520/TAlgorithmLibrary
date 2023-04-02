## * /

##判断是否给上一个值加 ^ 1 且该值不为数字
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.data2[-1]
execute if score #tal.maths.polynomial.list_count tal.input matches 1 run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add/add_power


# data modify storage t_algorithm_lib:maths polynomial.temp.per append from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
data modify storage t_algorithm_lib:maths polynomial.temp.data2 append value []
data modify storage t_algorithm_lib:maths polynomial.temp.data2[-1] append from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
data modify storage t_algorithm_lib:maths polynomial.temp.data2 append value [[]]

