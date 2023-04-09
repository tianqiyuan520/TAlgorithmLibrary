

execute store result score #tal.maths.vector.dot.num tal.input run data get storage t_algorithm_lib:maths vector.dot.vector1[0] 1000
execute store result score #tal.maths.vector.dot.num2 tal.input run data get storage t_algorithm_lib:maths vector.dot.vector2[0] 1000

scoreboard players operation #tal.maths.vector.dot.num tal.input += #tal.maths.vector.dot.num2 tal.input
scoreboard players operation #tal.maths.vector.dot.sum tal.input += #tal.maths.vector.dot.num tal.input

data remove storage t_algorithm_lib:maths vector.dot.vector1[0]
data remove storage t_algorithm_lib:maths vector.dot.vector2[0]
scoreboard players remove #tal.maths.vector.dot.loop tal.input 1
execute if score #tal.maths.vector.dot.loop tal.input matches 1.. run function t_algorithm_lib:maths/vector/dot/loop