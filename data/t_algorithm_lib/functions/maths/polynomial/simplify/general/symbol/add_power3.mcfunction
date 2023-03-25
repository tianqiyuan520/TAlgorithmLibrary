#取反
data modify storage t_algorithm_lib:maths polynomial.temp.data2[-2][0] set value '*'
execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.data2[-1][2][0][0]
scoreboard players set #tal.maths.polynomial.-1 tal.str_parser -1
scoreboard players operation #tal.maths.polynomial.list_count tal.str_parser *= #tal.maths.polynomial.-1 tal.str_parser
execute store result storage t_algorithm_lib:maths polynomial.temp.data2[-1][2][0][0] int 1 run scoreboard players get #tal.maths.polynomial.list_count tal.str_parser