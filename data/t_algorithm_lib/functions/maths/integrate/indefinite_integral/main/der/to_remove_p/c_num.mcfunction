data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.list[1]

data modify storage t_algorithm_lib:maths integrate.temp.list2 append from storage t_algorithm_lib:maths integrate.temp.list[1]

data remove storage t_algorithm_lib:maths integrate.temp.list[0]
data remove storage t_algorithm_lib:maths integrate.temp.list[0]
