

data modify storage t_algorithm_lib:maths determinant.expansion.list2[0] append from storage t_algorithm_lib:maths determinant.expansion.list[][-1]

data remove storage t_algorithm_lib:maths determinant.expansion.list[][-1]

execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.list[0]
execute if score #tal.maths.determinant.count tal.input matches 1.. run data modify storage t_algorithm_lib:maths determinant.expansion.list2 prepend value []

execute if score #tal.maths.determinant.count tal.input matches 1.. run function t_algorithm_lib:maths/determinant/expansion/take_loop