

execute store result score #tal.maths.vector.add.num tal.str_parser run data get storage t_algorithm_lib:maths vector.add.vector1[0] 1000
execute store result score #tal.maths.vector.add.num2 tal.str_parser run data get storage t_algorithm_lib:maths vector.add.vector2[0] 1000


data modify storage t_algorithm_lib:maths vector.add.result append value 0.0d
execute if score #tal.maths.vector.add.mod tal.str_parser matches 1 store result storage t_algorithm_lib:maths vector.add.result[-1] double 0.001 run scoreboard players operation #tal.maths.vector.add.num tal.str_parser += #tal.maths.vector.add.num tal.str_parser 
execute if score #tal.maths.vector.add.mod tal.str_parser matches -1 store result storage t_algorithm_lib:maths vector.add.result[-1] double 0.001 run scoreboard players operation #tal.maths.vector.add.num tal.str_parser -= #tal.maths.vector.add.num tal.str_parser 





data remove storage t_algorithm_lib:maths vector.add.vector1[0]
data remove storage t_algorithm_lib:maths vector.add.vector2[0]
scoreboard players remove #tal.maths.vector.add.loop tal.str_parser 1
execute if score #tal.maths.vector.add.loop tal.str_parser matches 1.. run function t_algorithm_lib:maths/vector/add/loop