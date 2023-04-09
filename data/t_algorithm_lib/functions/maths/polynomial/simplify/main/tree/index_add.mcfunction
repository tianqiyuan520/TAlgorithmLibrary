execute store result score #tal.maths.polynomial.main.index tal.input run data get storage t_algorithm_lib:maths polynomial.main.main_tree[-1][1][0]

execute store result score #tal.maths.polynomial.main.len tal.input run data get storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]
scoreboard players operation #tal.maths.polynomial.main.index_ tal.input = #tal.maths.polynomial.main.index tal.input
scoreboard players remove #tal.maths.polynomial.main.len tal.input 1
execute if score #tal.maths.polynomial.main.len tal.input > #tal.maths.polynomial.main.index_ tal.input run scoreboard players add #tal.maths.polynomial.main.index_ tal.input 1
execute store result storage t_algorithm_lib:maths polynomial.main.main_tree[-1][1][0] int 1 run scoreboard players get #tal.maths.polynomial.main.index_ tal.input
#判断是否下次加回溯
execute if score #tal.maths.polynomial.main.len tal.input <= #tal.maths.polynomial.main.index tal.input run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][3][0] set value 1
