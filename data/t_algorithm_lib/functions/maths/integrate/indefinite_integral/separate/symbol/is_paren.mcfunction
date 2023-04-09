##括号的判断
scoreboard players set #tal.maths.integrate.success tal.input 0
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'('} run scoreboard players set #tal.maths.integrate.success tal.input 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'sin('} run scoreboard players set #tal.maths.integrate.success tal.input 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'cos('} run scoreboard players set #tal.maths.integrate.success tal.input 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'tan('} run scoreboard players set #tal.maths.integrate.success tal.input 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'log('} run scoreboard players set #tal.maths.integrate.success tal.input 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'ln('} run scoreboard players set #tal.maths.integrate.success tal.input 1

execute if score #tal.maths.integrate.success tal.input matches 1 run scoreboard players add #tal.maths.integrate.paren tal.input 1

##右

scoreboard players set #tal.maths.integrate.success2 tal.input 0
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:')'} run scoreboard players set #tal.maths.integrate.success2 tal.input 1
execute if score #tal.maths.integrate.success2 tal.input matches 1 run scoreboard players remove #tal.maths.integrate.paren tal.input 1

