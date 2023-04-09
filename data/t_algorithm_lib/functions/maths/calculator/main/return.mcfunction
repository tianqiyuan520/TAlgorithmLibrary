
#data modify storage t_algorithm_lib:maths calculator.main.stack append value [[],[[3d],[2d]],[0]]
data modify storage t_algorithm_lib:maths calculator.main.stack[-2][2] set value []
data modify storage t_algorithm_lib:maths calculator.main.stack[-2][2] append from storage t_algorithm_lib:maths calculator.main.stack[-1][1][][0]

data remove storage t_algorithm_lib:maths calculator.main.stack[-1]