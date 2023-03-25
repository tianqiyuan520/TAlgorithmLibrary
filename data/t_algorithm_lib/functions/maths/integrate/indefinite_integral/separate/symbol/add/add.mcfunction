data modify storage t_algorithm_lib:maths integrate.temp.per append from storage t_algorithm_lib:maths integrate.temp.data[0][0]
data modify storage t_algorithm_lib:maths integrate.temp.data2 append value []
data modify storage t_algorithm_lib:maths integrate.temp.data2[-1] append from storage t_algorithm_lib:maths integrate.temp.data[0][0]
data modify storage t_algorithm_lib:maths integrate.temp.data2 append value []
scoreboard players add #tal.maths.integrate.time_ tal.str_parser 1