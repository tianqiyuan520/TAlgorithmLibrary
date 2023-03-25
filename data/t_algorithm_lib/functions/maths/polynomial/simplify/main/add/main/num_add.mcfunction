##num添加
execute store result score #tal.maths.polynomial.temp.power tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[0][0][2][0][0]
execute store result score #tal.maths.polynomial.temp.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[0][0][0][0][0]
execute if score #tal.maths.polynomial.temp.power tal.str_parser matches 0 run scoreboard players set #tal.maths.polynomial.temp.num tal.str_parser 1

execute store result score #tal.maths.polynomial.temp.power2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[2][0][2][0][0]
execute store result score #tal.maths.polynomial.temp.num2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.list[2][0][0][0][0]
execute if score #tal.maths.polynomial.temp.power2 tal.str_parser matches 0 run scoreboard players set #tal.maths.polynomial.temp.num2 tal.str_parser 1

execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"+"} run scoreboard players operation #tal.maths.polynomial.temp.num tal.str_parser += #tal.maths.polynomial.temp.num2 tal.str_parser
execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char2:"-"} run scoreboard players operation #tal.maths.polynomial.temp.num tal.str_parser -= #tal.maths.polynomial.temp.num2 tal.str_parser
data remove storage t_algorithm_lib:maths polynomial.temp.list[0]
data remove storage t_algorithm_lib:maths polynomial.temp.list[0]
data remove storage t_algorithm_lib:maths polynomial.temp.list[0]
data modify storage t_algorithm_lib:maths polynomial.temp.list prepend value [[[1]],['^'],[1]]
execute store result storage t_algorithm_lib:maths polynomial.temp.list[0][0][2][0][0] int 1 run scoreboard players get #tal.maths.polynomial.temp.num tal.str_parser