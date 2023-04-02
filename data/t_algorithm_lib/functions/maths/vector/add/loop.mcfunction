

execute store result score #tal.maths.vector.add.num tal.input run data get storage t_algorithm_lib:maths vector.add.vector1[0] 1000
execute store result score #tal.maths.vector.add.num2 tal.input run data get storage t_algorithm_lib:maths vector.add.vector2[0] 1000


data modify storage t_algorithm_lib:maths vector.add.result append value 0.0d
execute if score #tal.maths.vector.add.mod tal.input matches 1 store result storage t_algorithm_lib:maths vector.add.result[-1] double 0.001 run scoreboard players operation #tal.maths.vector.add.num tal.input += #tal.maths.vector.add.num tal.input 
execute if score #tal.maths.vector.add.mod tal.input matches -1 store result storage t_algorithm_lib:maths vector.add.result[-1] double 0.001 run scoreboard players operation #tal.maths.vector.add.num tal.input -= #tal.maths.vector.add.num tal.input 





data remove storage t_algorithm_lib:maths vector.add.vector1[0]
data remove storage t_algorithm_lib:maths vector.add.vector2[0]
scoreboard players remove #tal.maths.vector.add.loop tal.input 1
execute if score #tal.maths.vector.add.loop tal.input matches 1.. run function t_algorithm_lib:maths/vector/add/loop