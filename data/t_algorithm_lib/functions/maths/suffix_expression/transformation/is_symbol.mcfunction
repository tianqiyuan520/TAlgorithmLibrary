##运算符
##优先级比较

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set value []
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1][0]
scoreboard players set #tal.maths.suffix_expression.symbol tal.input 0
scoreboard players set #tal.maths.suffix_expression.symbol_ tal.input 0

# execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'('} run scoreboard players set #tal.maths.suffix_expression.symbol tal.input 1
# execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:')'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.input 1
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'+'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.input 2
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'-'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.input 2
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'*'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.input 3
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:'/'} run scoreboard players set #tal.maths.suffix_expression.symbol tal.input 3


execute if score #tal.maths.suffix_expression.symbol tal.input matches 1.. run function t_algorithm_lib:maths/suffix_expression/transformation/get_p

execute if score #tal.maths.suffix_expression.symbol_1 tal.input > #tal.maths.suffix_expression.symbol_ tal.input run data modify storage t_algorithm_lib:maths suffix_expression.transformation.s2 append from storage t_algorithm_lib:maths suffix_expression.transformation.s3[0]


execute if score #tal.maths.suffix_expression.symbol_1 tal.input <= #tal.maths.suffix_expression.symbol_ tal.input run data modify storage t_algorithm_lib:maths suffix_expression.transformation.s1 append from storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1]
execute if score #tal.maths.suffix_expression.symbol_1 tal.input <= #tal.maths.suffix_expression.symbol_ tal.input run data remove storage t_algorithm_lib:maths suffix_expression.transformation.s2[-1]
execute store result score #tal.maths.suffix_expression.list_count tal.input run data get storage t_algorithm_lib:maths suffix_expression.transformation.s2
execute if score #tal.maths.suffix_expression.list_count tal.input matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.transformation.s2 append from storage t_algorithm_lib:maths suffix_expression.transformation.s3[0]
execute if score #tal.maths.suffix_expression.symbol_1 tal.input <= #tal.maths.suffix_expression.symbol_ tal.input if score #tal.maths.suffix_expression.list_count tal.input matches 1.. run function t_algorithm_lib:maths/suffix_expression/transformation/is_symbol
