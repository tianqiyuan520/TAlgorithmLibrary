data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.temp.list set value [[],['^'],[[2]]]
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.temp.list[-1][0] set from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[-1]
data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[-1]
data remove storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[-1]
data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.temp.list[0] append from storage t_algorithm_lib:maths polynomial.generalize.unfold.list_[]

data modify storage t_algorithm_lib:maths polynomial.generalize.unfold.list_ set from storage t_algorithm_lib:maths polynomial.generalize.unfold.temp.list

