data remove storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0][0]
data remove storage t_algorithm_lib:maths polynomial.main.main_tree[-2][0][-1]


scoreboard players remove #tal.maths.polynomial.main.index_all tal.input 1


execute store result score #tal.maths.polynomial.main.index__ tal.input run data get storage t_algorithm_lib:maths polynomial.main.main_tree[-2][1][0]
scoreboard players remove #tal.maths.polynomial.main.index__ tal.input 1
execute store result storage t_algorithm_lib:maths polynomial.main.main_tree[-2][1][0] int 1 run scoreboard players get #tal.maths.polynomial.main.index__ tal.input
