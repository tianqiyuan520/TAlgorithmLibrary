

execute store result score #tal.maths.vector.dot.num tal.str_parser run data get storage t_algorithm_lib:maths vector.dot.vector1[0] 1000
execute store result score #tal.maths.vector.dot.num2 tal.str_parser run data get storage t_algorithm_lib:maths vector.dot.vector2[0] 1000

scoreboard players operation #tal.maths.vector.dot.num tal.str_parser += #tal.maths.vector.dot.num2 tal.str_parser
scoreboard players operation #tal.maths.vector.dot.sum tal.str_parser += #tal.maths.vector.dot.num tal.str_parser

data remove storage t_algorithm_lib:maths vector.dot.vector1[0]
data remove storage t_algorithm_lib:maths vector.dot.vector2[0]
scoreboard players remove #tal.maths.vector.dot.loop tal.str_parser 1
execute if score #tal.maths.vector.dot.loop tal.str_parser matches 1.. run function t_algorithm_lib:maths/vector/dot/loop