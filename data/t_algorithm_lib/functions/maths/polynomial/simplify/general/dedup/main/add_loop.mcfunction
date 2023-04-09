##普通添加
data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.return[-1][2] append from storage t_algorithm_lib:maths polynomial.generalize.dedup.list2[0][2][0]

data remove storage t_algorithm_lib:maths polynomial.generalize.dedup.list2[0][2][0]
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.generalize.dedup.list2[0][2]
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/general/dedup/main/add_loop

