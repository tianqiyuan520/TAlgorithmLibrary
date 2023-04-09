##
##判断运算符
scoreboard players set #tal.maths.calculator.symbol tal.input 0
##优先级
scoreboard players set #tal.maths.calculator.symbol_ tal.input 0
##
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set value []

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.transformation.s3[0][0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run data modify storage t_algorithm_lib:maths calculator.transformation.s3[0] set value ["("]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run scoreboard players set #tal.maths.calculator.symbol tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run function t_algorithm_lib:maths/calculator/transformation/get_p
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run scoreboard players set #tal.maths.calculator.symbol tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run data modify storage t_algorithm_lib:maths calculator.transformation.s3[0] set value [")"]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run function t_algorithm_lib:maths/calculator/transformation/get_p

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.transformation.s3[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run scoreboard players set #tal.maths.calculator.symbol tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'('} run function t_algorithm_lib:maths/calculator/transformation/get_p
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run scoreboard players set #tal.maths.calculator.symbol tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run function t_algorithm_lib:maths/calculator/transformation/get_p

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.transformation.s3[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'+'} run scoreboard players set #tal.maths.calculator.symbol tal.input 2
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'+'} run function t_algorithm_lib:maths/calculator/transformation/get_p
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'-'} run scoreboard players set #tal.maths.calculator.symbol tal.input 2
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'-'} run function t_algorithm_lib:maths/calculator/transformation/get_p
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'*'} run scoreboard players set #tal.maths.calculator.symbol tal.input 3
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'*'} run function t_algorithm_lib:maths/calculator/transformation/get_p
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'/'} run scoreboard players set #tal.maths.calculator.symbol tal.input 3
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'/'} run function t_algorithm_lib:maths/calculator/transformation/get_p
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'^'} run scoreboard players set #tal.maths.calculator.symbol tal.input 4
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'^'} run function t_algorithm_lib:maths/calculator/transformation/get_p
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'!'} run scoreboard players set #tal.maths.calculator.symbol tal.input 4
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'!'} run function t_algorithm_lib:maths/calculator/transformation/get_p
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:','} run scoreboard players set #tal.maths.calculator.symbol tal.input 100
##将符号全部进栈
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:','} run function t_algorithm_lib:maths/calculator/transformation/sp
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:','} run data modify storage t_algorithm_lib:maths calculator.transformation.s1 append from storage t_algorithm_lib:maths calculator.transformation.s3[0]
##
##数字入栈
execute if score #tal.maths.calculator.symbol tal.input matches 0 if score #tal.maths.calculator.symbol_ tal.input matches 0 run function t_algorithm_lib:maths/calculator/transformation/is_num

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.transformation.s3[0][0]
##符号
execute unless score #tal.maths.calculator.symbol tal.input matches 0 run scoreboard players operation #tal.maths.calculator.symbol_1 tal.input = #tal.maths.calculator.symbol_ tal.input
execute unless data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} unless score #tal.maths.calculator.symbol tal.input matches 0 unless score #tal.maths.calculator.symbol tal.input matches 100 run function t_algorithm_lib:maths/calculator/transformation/is_symbol

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.transformation.s3[0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:')'} run function t_algorithm_lib:maths/calculator/transformation/is_parn_loop

##
data remove storage t_algorithm_lib:maths calculator.transformation.s3[0]
execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.transformation.s3
execute if score #tal.maths.calculator.list_count tal.input matches 0 run function t_algorithm_lib:maths/calculator/transformation/end
execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.transformation.s3
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/transformation/loop