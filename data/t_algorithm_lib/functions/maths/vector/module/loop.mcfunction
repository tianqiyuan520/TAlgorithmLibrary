

execute store result score #tal.maths.vector.module.num tal.str_parser run data get storage t_algorithm_lib:maths vector.module.vector1[0] 1000
execute if score #tal.maths.vector.module.mod tal.str_parser matches 1 store result score #tal.maths.vector.module.num2 tal.str_parser run data get storage t_algorithm_lib:maths vector.module.vector2[0] 1000

execute if score #tal.maths.vector.module.mod tal.str_parser matches 1 run scoreboard players operation #tal.maths.vector.module.num2 tal.str_parser -= #tal.maths.vector.module.num tal.str_parse
execute if score #tal.maths.vector.module.mod tal.str_parser matches 1 run scoreboard players operation #tal.maths.vector.module.num tal.str_parser -= #tal.maths.vector.module.num2 tal.str_parse

scoreboard players operation #tal.maths.vector.module.num tal.str_parser *= #tal.maths.vector.module.num tal.str_parser
scoreboard players operation #tal.maths.vector.module.sum tal.str_parser += #tal.maths.vector.module.num tal.str_parser


data remove storage t_algorithm_lib:maths vector.module.vector1[0]
data remove storage t_algorithm_lib:maths vector.module.vector2[0]
scoreboard players remove #tal.maths.vector.module.loop tal.str_parser 1
execute if score #tal.maths.vector.module.loop tal.str_parser matches 1.. run function t_algorithm_lib:maths/vector/module/loop