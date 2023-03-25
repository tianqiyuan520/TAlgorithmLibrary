##运算符
##优先级比较

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set value []
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.transformation.s2[-1][0]
scoreboard players set #tal.maths.calculator.symbol tal.str_parser 0
scoreboard players set #tal.maths.calculator.symbol_ tal.str_parser 0

# execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 1
# execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'+'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 2
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'-'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 2
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'*'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 3
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'/'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 3
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'^'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 4
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'!'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 4


execute if score #tal.maths.calculator.symbol tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/transformation/get_p

execute if score #tal.maths.calculator.symbol_1 tal.str_parser > #tal.maths.calculator.symbol_ tal.str_parser run data modify storage t_algorithm_lib:maths calculator.transformation.s2 append from storage t_algorithm_lib:maths calculator.transformation.s3[0]


execute if score #tal.maths.calculator.symbol_1 tal.str_parser <= #tal.maths.calculator.symbol_ tal.str_parser run data modify storage t_algorithm_lib:maths calculator.transformation.s1 append from storage t_algorithm_lib:maths calculator.transformation.s2[-1]
execute if score #tal.maths.calculator.symbol_1 tal.str_parser <= #tal.maths.calculator.symbol_ tal.str_parser run data remove storage t_algorithm_lib:maths calculator.transformation.s2[-1]
execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.transformation.s2
execute if score #tal.maths.calculator.list_count tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths calculator.transformation.s2 append from storage t_algorithm_lib:maths calculator.transformation.s3[0]
execute if score #tal.maths.calculator.symbol_1 tal.str_parser <= #tal.maths.calculator.symbol_ tal.str_parser if score #tal.maths.calculator.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/transformation/is_symbol
