##判断
##括号的判断
scoreboard players set #tal.maths.integrate.success tal.str_parser 0
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'('} run scoreboard players set #tal.maths.integrate.success tal.str_parser 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'sin('} run scoreboard players set #tal.maths.integrate.success tal.str_parser 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'cos('} run scoreboard players set #tal.maths.integrate.success tal.str_parser 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'tan('} run scoreboard players set #tal.maths.integrate.success tal.str_parser 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'log('} run scoreboard players set #tal.maths.integrate.success tal.str_parser 1

data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:'ln('} run scoreboard players set #tal.maths.integrate.success tal.str_parser 1

execute if score #tal.maths.integrate.success tal.str_parser matches 1 run scoreboard players add #tal.maths.integrate.paren_ tal.str_parser 1

##右

scoreboard players set #tal.maths.integrate.success2 tal.str_parser 0
data modify storage t_algorithm_lib:maths integrate.temp.list_check.char set from storage t_algorithm_lib:maths integrate.temp.data[0][0]
execute if data storage t_algorithm_lib:maths integrate.temp.list_check{char:')'} run scoreboard players set #tal.maths.integrate.success2 tal.str_parser 1
execute if score #tal.maths.integrate.paren_ tal.str_parser matches 1.. if score #tal.maths.integrate.success2 tal.str_parser matches 1 run scoreboard players remove #tal.maths.integrate.paren_ tal.str_parser 1






data modify storage t_algorithm_lib:maths integrate.temp.data append from storage t_algorithm_lib:maths integrate.temp.data[0]
data remove storage t_algorithm_lib:maths integrate.temp.data[0]

scoreboard players remove #tal.maths.integrate.index tal.str_parser 1
execute unless score #tal.maths.integrate.index tal.str_parser matches ..0 run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/check_paren_loop