#判断 是否特殊函数 sin,cos...
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[0]


scoreboard players set #tal.maths.suffix_expression.num2 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success tal.input 0
scoreboard players set #tal.maths.suffix_expression.success2 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success3 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success4 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success5 tal.input 0
scoreboard players set #tal.maths.suffix_expression.fail tal.input 0




scoreboard players set #tal.maths.suffix_expression.success tal.input 0
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"s"} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"i"} run scoreboard players set #tal.maths.suffix_expression.success2 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"n"} run scoreboard players set #tal.maths.suffix_expression.success3 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[3]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.suffix_expression.success4 tal.input 1

execute unless score #tal.maths.suffix_expression.success tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success2 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success3 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success4 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run scoreboard players set #tal.maths.suffix_expression.success5 tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.temp.n set value 'sin('

scoreboard players set #tal.maths.suffix_expression.success tal.input 0
scoreboard players set #tal.maths.suffix_expression.success2 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success3 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success4 tal.input 0
scoreboard players set #tal.maths.suffix_expression.fail tal.input 0

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"c"} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"o"} run scoreboard players set #tal.maths.suffix_expression.success2 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"s"} run scoreboard players set #tal.maths.suffix_expression.success3 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[3]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.suffix_expression.success4 tal.input 1

execute unless score #tal.maths.suffix_expression.success tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success2 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success3 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success4 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run scoreboard players set #tal.maths.suffix_expression.success5 tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.temp.n set value 'cos('

scoreboard players set #tal.maths.suffix_expression.success tal.input 0
scoreboard players set #tal.maths.suffix_expression.success2 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success3 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success4 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success tal.input 0
scoreboard players set #tal.maths.suffix_expression.fail tal.input 0

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"t"} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"a"} run scoreboard players set #tal.maths.suffix_expression.success2 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"n"} run scoreboard players set #tal.maths.suffix_expression.success3 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[3]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.suffix_expression.success4 tal.input 1

execute unless score #tal.maths.suffix_expression.success tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success2 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success3 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success4 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run scoreboard players set #tal.maths.suffix_expression.success5 tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.temp.n set value 'tan('

scoreboard players set #tal.maths.suffix_expression.success tal.input 0
scoreboard players set #tal.maths.suffix_expression.success2 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success3 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success4 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success tal.input 0
scoreboard players set #tal.maths.suffix_expression.fail tal.input 0

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"l"} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"o"} run scoreboard players set #tal.maths.suffix_expression.success2 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"g"} run scoreboard players set #tal.maths.suffix_expression.success3 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[3]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.suffix_expression.success4 tal.input 1

execute unless score #tal.maths.suffix_expression.success tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success2 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success3 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success4 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run scoreboard players set #tal.maths.suffix_expression.success5 tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.temp.n set value 'log('

scoreboard players set #tal.maths.suffix_expression.success tal.input 0
scoreboard players set #tal.maths.suffix_expression.success2 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success3 tal.input 0
scoreboard players set #tal.maths.suffix_expression.success tal.input 0
scoreboard players set #tal.maths.suffix_expression.fail tal.input 0

data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[0]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"l"} run scoreboard players set #tal.maths.suffix_expression.success tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[1]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"n"} run scoreboard players set #tal.maths.suffix_expression.success2 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[2]
execute if data storage t_algorithm_lib:maths suffix_expression.temp.list_check{char:"("} run scoreboard players set #tal.maths.suffix_expression.success3 tal.input 1
data modify storage t_algorithm_lib:maths suffix_expression.temp.list_check.char set from storage t_algorithm_lib:maths suffix_expression.temp.separation[3]

execute unless score #tal.maths.suffix_expression.success tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success2 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success3 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run scoreboard players set #tal.maths.suffix_expression.success5 tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.temp.n set value 'ln('





execute unless score #tal.maths.suffix_expression.success tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success2 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success3 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute unless score #tal.maths.suffix_expression.success4 tal.input matches 1 run scoreboard players set #tal.maths.suffix_expression.fail tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run scoreboard players set #tal.maths.suffix_expression.success5 tal.input 1
execute if score #tal.maths.suffix_expression.fail tal.input matches 0 run data modify storage t_algorithm_lib:maths suffix_expression.temp.n set value 'log('






execute if score #tal.maths.suffix_expression.success5 tal.input matches 1 run data remove storage t_algorithm_lib:maths suffix_expression.temp.separation[0]
execute if score #tal.maths.suffix_expression.success5 tal.input matches 1 run data remove storage t_algorithm_lib:maths suffix_expression.temp.separation[0]
execute if score #tal.maths.suffix_expression.success5 tal.input matches 1 run data remove storage t_algorithm_lib:maths suffix_expression.temp.separation[0]