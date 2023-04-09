##

##运行栈
## [   [ 后缀表达式遍历的栈, 主栈 ,[ 函数值],  ] ...     ]
# data modify storage t_algorithm_lib:maths calculator.main.stack set value [[[],[],[0]]]

# data modify storage t_algorithm_lib:maths calculator.main.stack[-1][0] set value [[1],[10],['+'],[1],['-'],[['cos('],['tan('],[1],['+'],[1],[')'],['+'],[5],['!'],['-'],[3],['^'],[3],[')']],['+']]

#data modify storage t_algorithm_lib:maths calculator.main.stack set value [[[],[],[0]]]

##生成两个栈

data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1] set value []

data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1] set value [[]]

data modify storage t_algorithm_lib:maths calculator.main.result set value []
execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][0]
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/main/loop
