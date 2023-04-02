execute store result score #tal.maths.matrix.num tal.input run data get storage t_algorithm_lib:maths matrix.temp.list3[0] 100
execute store result score #tal.maths.matrix.num2 tal.input run data get storage t_algorithm_lib:maths matrix.temp.list4[0] 100

scoreboard players operation #tal.maths.matrix.num tal.input += #tal.maths.matrix.num2 tal.input 

data modify storage t_algorithm_lib:maths matrix.add.result[-1] append value 0.1
execute store result storage t_algorithm_lib:maths matrix.add.result[-1][0] double 0.01 run scoreboard players get #tal.maths.matrix.num tal.input

data remove storage t_algorithm_lib:maths matrix.temp.list3[0]
data remove storage t_algorithm_lib:maths matrix.temp.list4[0]

execute store result score #tal.maths.matrix.list_count tal.input run data get storage t_algorithm_lib:maths matrix.temp.list3
execute if score #tal.maths.matrix.list_count tal.input matches 1.. run function t_algorithm_lib:maths/matrix/add/2/loop2
