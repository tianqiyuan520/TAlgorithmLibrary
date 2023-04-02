execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][2][0][0]
execute store result score #tal.maths.polynomial.list_count2 tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.list2[0][2][0][0]

scoreboard players operation #tal.maths.polynomial.list_count tal.input += #tal.maths.polynomial.list_count2 tal.input
execute store result storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][2][0][0] int 1 run scoreboard players get #tal.maths.polynomial.list_count tal.input

execute if score #tal.maths.polynomial.list_count tal.input matches 0 run data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1] set value [[[1]],['^'],[[1]]]
