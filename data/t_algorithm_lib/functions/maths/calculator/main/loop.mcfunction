##
##判断运算符
scoreboard players set #tal.maths.calculator.symbol tal.input 0
##优先级
scoreboard players set #tal.maths.calculator.symbol_ tal.input 0
##
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set value []

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.main.stack[-1][0][0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'+'} run scoreboard players set #tal.maths.calculator.symbol tal.input 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'-'} run scoreboard players set #tal.maths.calculator.symbol tal.input 2
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'*'} run scoreboard players set #tal.maths.calculator.symbol tal.input 3
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'/'} run scoreboard players set #tal.maths.calculator.symbol tal.input 4
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'^'} run scoreboard players set #tal.maths.calculator.symbol tal.input 5
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'!'} run scoreboard players set #tal.maths.calculator.symbol tal.input 6
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:','} run scoreboard players set #tal.maths.calculator.symbol tal.input 7
##
##
execute store result score #tal.maths.calculator.list_count2 tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][0][0]

execute if score #tal.maths.calculator.list_count2 tal.input matches 1 if score #tal.maths.calculator.symbol tal.input matches 0 run function t_algorithm_lib:maths/calculator/main/check_unknown


##数字入栈
execute if score #tal.maths.calculator.list_count2 tal.input matches 1 if score #tal.maths.calculator.symbol tal.input matches 0 run data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1] append from storage t_algorithm_lib:maths calculator.main.stack[-1][0][0]

##符号
execute if score #tal.maths.calculator.list_count2 tal.input matches 1 unless score #tal.maths.calculator.symbol tal.input matches 0 run function t_algorithm_lib:maths/calculator/main/is_symbol


execute if score #tal.maths.calculator.list_count2 tal.input matches 2.. run function t_algorithm_lib:maths/calculator/main/func/start
##
# tellraw @a ["运行的栈-遍历",{"nbt":"calculator.main.stack[][0]","storage":"t_algorithm_lib:maths","color":"#4DB8FE"}]
# tellraw @a ["运行的栈-主栈",{"nbt":"calculator.main.stack[][1]","storage":"t_algorithm_lib:maths","color":"#C57992"}]
# tellraw @a ["运行的栈-函数",{"nbt":"calculator.main.stack[][2]","storage":"t_algorithm_lib:maths","color":"#4EC9B0"}]

data remove storage t_algorithm_lib:maths calculator.main.stack[-1][0][0]

execute store result score #tal.maths.calculator.list_count tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][0]
execute store result score #tal.maths.calculator.list_count2 tal.input run data get storage t_algorithm_lib:maths calculator.main.stack
execute if score #tal.maths.calculator.list_count tal.input matches 0 if score #tal.maths.calculator.list_count2 tal.input matches 2.. run function t_algorithm_lib:maths/calculator/main/return
execute if score #tal.maths.calculator.list_count tal.input matches 0 if score #tal.maths.calculator.list_count2 tal.input matches 1 run function t_algorithm_lib:maths/calculator/main/end
execute if score #tal.maths.calculator.list_count tal.input matches 1.. run function t_algorithm_lib:maths/calculator/main/loop