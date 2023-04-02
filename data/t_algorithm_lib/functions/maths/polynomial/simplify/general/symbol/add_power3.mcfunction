#取反
data modify storage t_algorithm_lib:maths polynomial.temp.data2[-2][0] set value '*'
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.data2[-1][2][0][0]
scoreboard players set #tal.maths.polynomial.-1 tal.input -1
scoreboard players operation #tal.maths.polynomial.list_count tal.input *= #tal.maths.polynomial.-1 tal.input
execute store result storage t_algorithm_lib:maths polynomial.temp.data2[-1][2][0][0] int 1 run scoreboard players get #tal.maths.polynomial.list_count tal.input