#判断 是否特殊函数 sin,cos...
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[0]


scoreboard players set #tal.maths.derivation.num2 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success tal.str_parser 0
scoreboard players set #tal.maths.derivation.success2 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success3 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success4 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success5 tal.str_parser 0
scoreboard players set #tal.maths.derivation.fail tal.str_parser 0




scoreboard players set #tal.maths.derivation.success tal.str_parser 0
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"s"} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[1]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"i"} run scoreboard players set #tal.maths.derivation.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"n"} run scoreboard players set #tal.maths.derivation.success3 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[3]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"("} run scoreboard players set #tal.maths.derivation.success4 tal.str_parser 1

execute unless score #tal.maths.derivation.success tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success4 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.derivation.success5 tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths auto_derivation.temp.n set value 'sin('

scoreboard players set #tal.maths.derivation.success tal.str_parser 0
scoreboard players set #tal.maths.derivation.success2 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success3 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success4 tal.str_parser 0
scoreboard players set #tal.maths.derivation.fail tal.str_parser 0

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"c"} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[1]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"o"} run scoreboard players set #tal.maths.derivation.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"s"} run scoreboard players set #tal.maths.derivation.success3 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[3]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"("} run scoreboard players set #tal.maths.derivation.success4 tal.str_parser 1

execute unless score #tal.maths.derivation.success tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success4 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.derivation.success5 tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths auto_derivation.temp.n set value 'cos('

scoreboard players set #tal.maths.derivation.success tal.str_parser 0
scoreboard players set #tal.maths.derivation.success2 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success3 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success4 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success tal.str_parser 0
scoreboard players set #tal.maths.derivation.fail tal.str_parser 0

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"t"} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[1]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"a"} run scoreboard players set #tal.maths.derivation.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"n"} run scoreboard players set #tal.maths.derivation.success3 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[3]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"("} run scoreboard players set #tal.maths.derivation.success4 tal.str_parser 1

execute unless score #tal.maths.derivation.success tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success4 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.derivation.success5 tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths auto_derivation.temp.n set value 'tan('

scoreboard players set #tal.maths.derivation.success tal.str_parser 0
scoreboard players set #tal.maths.derivation.success2 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success3 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success4 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success tal.str_parser 0
scoreboard players set #tal.maths.derivation.fail tal.str_parser 0

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"l"} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[1]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"o"} run scoreboard players set #tal.maths.derivation.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"g"} run scoreboard players set #tal.maths.derivation.success3 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[3]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"("} run scoreboard players set #tal.maths.derivation.success4 tal.str_parser 1

execute unless score #tal.maths.derivation.success tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success4 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.derivation.success5 tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths auto_derivation.temp.n set value 'log('

scoreboard players set #tal.maths.derivation.success tal.str_parser 0
scoreboard players set #tal.maths.derivation.success2 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success3 tal.str_parser 0
scoreboard players set #tal.maths.derivation.success tal.str_parser 0
scoreboard players set #tal.maths.derivation.fail tal.str_parser 0

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"l"} run scoreboard players set #tal.maths.derivation.success tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[1]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"n"} run scoreboard players set #tal.maths.derivation.success2 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[2]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:"("} run scoreboard players set #tal.maths.derivation.success3 tal.str_parser 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.separation[3]

execute unless score #tal.maths.derivation.success tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.derivation.success5 tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths auto_derivation.temp.n set value 'ln('





execute unless score #tal.maths.derivation.success tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success2 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success3 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute unless score #tal.maths.derivation.success4 tal.str_parser matches 1 run scoreboard players set #tal.maths.derivation.fail tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run scoreboard players set #tal.maths.derivation.success5 tal.str_parser 1
execute if score #tal.maths.derivation.fail tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths auto_derivation.temp.n set value 'log('






execute if score #tal.maths.derivation.success5 tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths auto_derivation.temp.separation[0]
execute if score #tal.maths.derivation.success5 tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths auto_derivation.temp.separation[0]
execute if score #tal.maths.derivation.success5 tal.str_parser matches 1 run data remove storage t_algorithm_lib:maths auto_derivation.temp.separation[0]