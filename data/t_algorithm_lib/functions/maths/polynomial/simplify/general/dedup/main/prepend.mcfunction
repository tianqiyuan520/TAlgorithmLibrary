##数字 前移
data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.return prepend from storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1]
data remove storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1]

data modify storage t_algorithm_lib:maths polynomial.main.temp.data2 prepend from storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1]
data remove storage t_algorithm_lib:maths polynomial.main.temp.data2[-1]
