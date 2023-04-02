

execute store result score #tal.maths.vector.module.num tal.input run data get storage t_algorithm_lib:maths vector.module.vector1[0] 1000
execute if score #tal.maths.vector.module.mod tal.input matches 1 store result score #tal.maths.vector.module.num2 tal.input run data get storage t_algorithm_lib:maths vector.module.vector2[0] 1000

execute if score #tal.maths.vector.module.mod tal.input matches 1 run scoreboard players operation #tal.maths.vector.module.num2 tal.input -= #tal.maths.vector.module.num tal.str_parse
execute if score #tal.maths.vector.module.mod tal.input matches 1 run scoreboard players operation #tal.maths.vector.module.num tal.input -= #tal.maths.vector.module.num2 tal.str_parse

scoreboard players operation #tal.maths.vector.module.num tal.input *= #tal.maths.vector.module.num tal.input
scoreboard players operation #tal.maths.vector.module.sum tal.input += #tal.maths.vector.module.num tal.input


data remove storage t_algorithm_lib:maths vector.module.vector1[0]
data remove storage t_algorithm_lib:maths vector.module.vector2[0]
scoreboard players remove #tal.maths.vector.module.loop tal.input 1
execute if score #tal.maths.vector.module.loop tal.input matches 1.. run function t_algorithm_lib:maths/vector/module/loop