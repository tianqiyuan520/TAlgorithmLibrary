##括号的判断
scoreboard players set #tal.maths.polynomial.success tal.str_parser 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'('} run scoreboard players set #tal.maths.polynomial.success tal.str_parser 1

data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'sin('} run scoreboard players set #tal.maths.polynomial.success tal.str_parser 1

data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'cos('} run scoreboard players set #tal.maths.polynomial.success tal.str_parser 1

data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'tan('} run scoreboard players set #tal.maths.polynomial.success tal.str_parser 1

data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'log('} run scoreboard players set #tal.maths.polynomial.success tal.str_parser 1

data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'ln('} run scoreboard players set #tal.maths.polynomial.success tal.str_parser 1

execute if score #tal.maths.polynomial.success tal.str_parser matches 1 run scoreboard players add #tal.maths.polynomial.paren tal.str_parser 1

##右

scoreboard players set #tal.maths.polynomial.success2 tal.str_parser 0
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data[0][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:')'} run scoreboard players set #tal.maths.polynomial.success2 tal.str_parser 1
execute if score #tal.maths.polynomial.success2 tal.str_parser matches 1 run scoreboard players remove #tal.maths.polynomial.paren tal.str_parser 1

