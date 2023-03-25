#判断 是否特殊函数 sin,cos...
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[0]


scoreboard players set #tal.maths.STExpression.num2 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success4 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.remove tal.str_parser 0
scoreboard players set #tal.maths.STExpression.fail tal.str_parser 0

scoreboard players set #tal.maths.STExpression.success tal.str_parser 0
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"s"} run scoreboard players set #tal.maths.STExpression.success tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"i"} run scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"n"} run scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[3]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.STExpression.success4 tal.str_parser 1

execute unless score #tal.maths.STExpression.success tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success4 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.STExpression.remove tal.str_parser 1
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths string_to_expression.temp.n set value 'sin('

scoreboard players set #tal.maths.STExpression.success tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success4 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.fail tal.str_parser 0

data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"c"} run scoreboard players set #tal.maths.STExpression.success tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"o"} run scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"s"} run scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[3]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.STExpression.success4 tal.str_parser 1

execute unless score #tal.maths.STExpression.success tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success4 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.STExpression.remove tal.str_parser 1
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths string_to_expression.temp.n set value 'cos('

scoreboard players set #tal.maths.STExpression.success tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success4 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.fail tal.str_parser 0

data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"t"} run scoreboard players set #tal.maths.STExpression.success tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"a"} run scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"n"} run scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[3]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.STExpression.success4 tal.str_parser 1

execute unless score #tal.maths.STExpression.success tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success4 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.STExpression.remove tal.str_parser 1
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths string_to_expression.temp.n set value 'tan('


scoreboard players set #tal.maths.STExpression.success tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success4 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.fail tal.str_parser 0

data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"a"} run scoreboard players set #tal.maths.STExpression.success tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"b"} run scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"s"} run scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[3]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.STExpression.success4 tal.str_parser 1

execute unless score #tal.maths.STExpression.success tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success4 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.STExpression.remove tal.str_parser 1
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths string_to_expression.temp.n set value 'abs('

scoreboard players set #tal.maths.STExpression.success tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success4 tal.str_parser 0
scoreboard players set #tal.maths.STExpression.success tal.str_parser 0
scoreboard players set #tal.maths.STExpression.fail tal.str_parser 0

data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"l"} run scoreboard players set #tal.maths.STExpression.success tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"n"} run scoreboard players set #tal.maths.STExpression.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths string_to_expression.temp.list_check.char set from storage t_algorithm_lib:maths string_to_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths string_to_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.STExpression.success3 tal.str_parser 1

execute unless score #tal.maths.STExpression.success tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute unless score #tal.maths.STExpression.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.STExpression.fail tal.str_parser 1
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.STExpression.remove tal.str_parser 2
execute if score #tal.maths.STExpression.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths string_to_expression.temp.n set value 'ln('


execute if score #tal.maths.STExpression.remove tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths string_to_expression.temp.separation[0]
execute if score #tal.maths.STExpression.remove tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths string_to_expression.temp.separation[0]
execute if score #tal.maths.STExpression.remove tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths string_to_expression.temp.separation[0]

execute if score #tal.maths.STExpression.remove tal.str_parser matches 2 run data remove storage t_algorithm_lib:maths string_to_expression.temp.separation[0]
execute if score #tal.maths.STExpression.remove tal.str_parser matches 2 run data remove storage t_algorithm_lib:maths string_to_expression.temp.separation[0]