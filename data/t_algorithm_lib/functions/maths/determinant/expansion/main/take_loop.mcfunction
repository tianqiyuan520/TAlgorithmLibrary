##判断 index_是否为 index
##是则删除 该行且该行第一个作为系数

execute if score #tal.maths.determinant.index_ tal.input = #tal.maths.determinant.index tal.input run function t_algorithm_lib:maths/determinant/expansion/main/take_match
execute unless score #tal.maths.determinant.index_ tal.input = #tal.maths.determinant.index tal.input run data modify storage t_algorithm_lib:maths determinant.expansion.list3 append from storage t_algorithm_lib:maths determinant.expansion.list[0]


data remove storage t_algorithm_lib:maths determinant.expansion.list2[0]
data remove storage t_algorithm_lib:maths determinant.expansion.list[0]
execute store result score #tal.maths.determinant.count tal.input run data get storage t_algorithm_lib:maths determinant.expansion.list2
scoreboard players add #tal.maths.determinant.index_ tal.input 1
execute if score #tal.maths.determinant.count tal.input matches 1.. run function t_algorithm_lib:maths/determinant/expansion/main/take_loop