

execute store result score #tal.maths.vector.num.num tal.input run data get storage t_algorithm_lib:maths vector.num.vector1[0] 1000
execute store result score #tal.maths.vector.num.num2 tal.input run data get storage t_algorithm_lib:maths vector.num.num 1000


data modify storage t_algorithm_lib:maths vector.num.result append value 0.0d
execute store result storage t_algorithm_lib:maths vector.num.result[-1] double 0.000001 run scoreboard players operation #tal.maths.vector.num.num tal.input *= #tal.maths.vector.num.num tal.input


data remove storage t_algorithm_lib:maths vector.num.vector1[0]
scoreboard players remove #tal.maths.vector.num.loop tal.input 1
execute if score #tal.maths.vector.num.loop tal.input matches 1.. run function t_algorithm_lib:maths/vector/num/loop