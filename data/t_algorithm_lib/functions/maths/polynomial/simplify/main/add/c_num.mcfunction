scoreboard players set #tal.maths.polynomial.temp.num tal.str_parser 0
scoreboard players set #tal.maths.polynomial.temp.num2 tal.str_parser 0


data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.list[0][0][0]
execute store result score #tal.maths.polynomial.temp.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list_check.char
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.list[2][0][0]
execute store result score #tal.maths.polynomial.temp.num2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list_check.char

##计算
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.list[1][0]
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"+"} run scoreboard players operation #tal.maths.polynomial.temp.num tal.str_parser += #tal.maths.polynomial.temp.num2 tal.str_parser

execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:"-"} run scoreboard players operation #tal.maths.polynomial.temp.num tal.str_parser -= #tal.maths.polynomial.temp.num2 tal.str_parser




##赋值回去
# data modify storage t_algorithm_lib:maths polynomial.temp.list2 append value [[1]]
# execute store result storage t_algorithm_lib:maths polynomial.temp.list2[-1][0][0] int 1 run scoreboard players get #tal.maths.polynomial.temp.num tal.str_parser
data remove storage t_algorithm_lib:maths polynomial.temp.list[0]
data remove storage t_algorithm_lib:maths polynomial.temp.list[0]
data remove storage t_algorithm_lib:maths polynomial.temp.list[0]

data modify storage t_algorithm_lib:maths polynomial.temp.list prepend value [[1]]
execute store result storage t_algorithm_lib:maths polynomial.temp.list[0][0][0] int 1 run scoreboard players get #tal.maths.polynomial.temp.num tal.str_parser
