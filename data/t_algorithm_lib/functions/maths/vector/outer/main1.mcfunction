##二维

data modify storage t_algorithm_lib:maths vector.outer.result set value [0.0,0.0,0.0]

execute store result score #tal.maths.vector.outer.num tal.str_parser run data get storage t_algorithm_lib:maths vector.outer.vector1[0] 1000
execute store result score #tal.maths.vector.outer.num2 tal.str_parser run data get storage t_algorithm_lib:maths vector.outer.vector2[1] 1000

execute store result score #tal.maths.vector.outer.num3 tal.str_parser run data get storage t_algorithm_lib:maths vector.outer.vector1[1] 1000
execute store result score #tal.maths.vector.outer.num4 tal.str_parser run data get storage t_algorithm_lib:maths vector.outer.vector2[0] 1000

scoreboard players operation #tal.maths.vector.outer.num tal.str_parser *= #tal.maths.vector.outer.num2 tal.str_parser
scoreboard players operation #tal.maths.vector.outer.num3 tal.str_parser *= #tal.maths.vector.outer.num4 tal.str_parser
scoreboard players operation #tal.maths.vector.outer.num tal.str_parser -= #tal.maths.vector.outer.num3 tal.str_parser

execute store result storage t_algorithm_lib:maths vector.outer.result[2] double 0.000001 run scoreboard players get #tal.maths.vector.outer.num tal.str_parser
