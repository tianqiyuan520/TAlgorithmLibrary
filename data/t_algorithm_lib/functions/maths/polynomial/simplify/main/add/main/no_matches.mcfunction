data modify storage t_algorithm_lib:maths polynomial.temp.list prepend value [[],['+'],[]]
data modify storage t_algorithm_lib:maths polynomial.temp.list[0][0] set from storage t_algorithm_lib:maths polynomial.temp.list[1]
data remove storage t_algorithm_lib:maths polynomial.temp.list[1]
data modify storage t_algorithm_lib:maths polynomial.temp.list[0][1] set from storage t_algorithm_lib:maths polynomial.add.symbol
data modify storage t_algorithm_lib:maths polynomial.temp.list[0][2] set from storage t_algorithm_lib:maths polynomial.add.list2