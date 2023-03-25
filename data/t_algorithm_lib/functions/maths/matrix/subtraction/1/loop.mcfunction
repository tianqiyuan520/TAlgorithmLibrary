

execute store result score #tal.maths.matrix.num tal.str_parser run data get storage t_algorithm_lib:maths matrix.temp.list1[0] 100
execute store result score #tal.maths.matrix.num2 tal.str_parser run data get storage t_algorithm_lib:maths matrix.temp.list2[0] 100

scoreboard players operation #tal.maths.matrix.num tal.str_parser -= #tal.maths.matrix.num2 tal.str_parser 

data modify storage t_algorithm_lib:maths matrix.subtraction.result append value 0.1
execute store result storage t_algorithm_lib:maths matrix.subtraction.result[-1] double 0.01 run scoreboard players get #tal.maths.matrix.num tal.str_parser

data remove storage t_algorithm_lib:maths matrix.temp.list1[0]
data remove storage t_algorithm_lib:maths matrix.temp.list2[0]

execute store result score #tal.maths.matrix.list_count tal.str_parser run data get storage t_algorithm_lib:maths matrix.temp.list1
execute if score #tal.maths.matrix.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/matrix/subtraction/1/loop
