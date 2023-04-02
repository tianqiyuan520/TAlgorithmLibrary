##除法
execute store result score #tal.maths.trigonometric_functions.num tal.input run data get storage t_algorithm_lib:maths trigonometric_functions.result.sin 1000000000
execute store result score #tal.maths.trigonometric_functions.num2 tal.input run data get storage t_algorithm_lib:maths trigonometric_functions.result.cos 10000
#cal
scoreboard players operation #tal.maths.trigonometric_functions.num tal.input /= #tal.maths.trigonometric_functions.num2 tal.input

execute store result storage t_algorithm_lib:maths trigonometric_functions.result.tan double 0.00001 run scoreboard players get #tal.maths.trigonometric_functions.num tal.input
