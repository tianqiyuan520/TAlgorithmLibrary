data modify storage t_algorithm_lib:maths polynomial.temp.per append from storage t_algorithm_lib:maths polynomial.temp.data[0][0]

data modify storage t_algorithm_lib:maths polynomial.temp.data2 append value []
data modify storage t_algorithm_lib:maths polynomial.temp.data2[-1] append from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
data modify storage t_algorithm_lib:maths polynomial.temp.data2 append value []
scoreboard players add #tal.maths.polynomial.time_ tal.input 1