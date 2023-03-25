##
##判断运算符
scoreboard players set #tal.maths.calculator.symbol tal.str_parser 0
##优先级
scoreboard players set #tal.maths.calculator.symbol_ tal.str_parser 0
##
data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set value []

data modify storage t_algorithm_lib:maths calculator.temp.list_check.char set from storage t_algorithm_lib:maths calculator.main.stack[-1][0][0][0]
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'+'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 1
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'-'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 2
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'*'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 3
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'/'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 4
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'^'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 5
execute if data storage t_algorithm_lib:maths calculator.temp.list_check{char:'!'} run scoreboard players set #tal.maths.calculator.symbol tal.str_parser 6
##
##
execute store result score #tal.maths.calculator.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack[-1][0][0]

execute if score #tal.maths.calculator.list_count2 tal.str_parser matches 1 if score #tal.maths.calculator.symbol tal.str_parser matches 0 run function t_algorithm_lib:maths/calculator/main/check_unknown


##数字入栈
execute if score #tal.maths.calculator.list_count2 tal.str_parser matches 1 if score #tal.maths.calculator.symbol tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1] append from storage t_algorithm_lib:maths calculator.main.stack[-1][0][0]

##符号
execute if score #tal.maths.calculator.list_count2 tal.str_parser matches 1 unless score #tal.maths.calculator.symbol tal.str_parser matches 0 run function t_algorithm_lib:maths/calculator/main/is_symbol


execute if score #tal.maths.calculator.list_count2 tal.str_parser matches 2.. run function t_algorithm_lib:maths/calculator/main/func/start
##
# tellraw @a ["运行的栈",{"nbt":"calculator.main.stack[]","storage":"t_algorithm_lib:maths","color":"#8CA6C6"}]

data remove storage t_algorithm_lib:maths calculator.main.stack[-1][0][0]

execute store result score #tal.maths.calculator.list_count tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack[-1][0]
execute store result score #tal.maths.calculator.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths calculator.main.stack
execute if score #tal.maths.calculator.list_count tal.str_parser matches 0 if score #tal.maths.calculator.list_count2 tal.str_parser matches 2.. run function t_algorithm_lib:maths/calculator/main/return
execute if score #tal.maths.calculator.list_count tal.str_parser matches 0 if score #tal.maths.calculator.list_count2 tal.str_parser matches 1 run function t_algorithm_lib:maths/calculator/main/end
execute if score #tal.maths.calculator.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/calculator/main/loop