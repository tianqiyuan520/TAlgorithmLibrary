##
##判断运算符
scoreboard players set #tal.maths.calculator.symbol tal.input 0
##优先级
scoreboard players set #tal.maths.calculator.symbol_ tal.input 0
##
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set value []


data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.transformation2.s3[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'+'} run scoreboard players set #tal.maths.calculator.symbol tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'-'} run scoreboard players set #tal.maths.calculator.symbol tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'*'} run scoreboard players set #tal.maths.calculator.symbol tal.input 2
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'/'} run scoreboard players set #tal.maths.calculator.symbol tal.input 3
##
##数字入栈
execute if score #tal.maths.calculator.symbol tal.input matches 0 run data modify storage t_algorithm_lib:maths calculator.transformation2.s1 append value []
execute if score #tal.maths.calculator.symbol tal.input matches 0 run data modify storage t_algorithm_lib:maths calculator.transformation2.s1[-1] append from storage t_algorithm_lib:maths calculator.transformation2.s3[0]

##符号
execute unless score #tal.maths.calculator.symbol tal.input matches 0 run function t_algorithm_lib:maths/calculator/transformation2/is_symbol

##
data remove storage t_algorithm_lib:maths calculator.transformation2.s3[0]
execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.transformation2.s3
execute if score #tal.maths.calculator.list_count tal.input matches 0 run function t_algorithm_lib:maths/calculator/transformation2/end
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/transformation2/loop