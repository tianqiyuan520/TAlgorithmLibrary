##多元函数新建变量

data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1] append value [] 
# data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1] append value []
# data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-1] set from storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][-1]

# data remove storage t_algorithm_lib:maths calculator.main.stack[-1][1][-2][-1]