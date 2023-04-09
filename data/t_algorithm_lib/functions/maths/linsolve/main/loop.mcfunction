
data modify storage t_algorithm_lib:maths linsolve.list3 set from storage t_algorithm_lib:maths linsolve.list2
scoreboard players set #tal.maths.linsolve.f tal.input 0
execute unless data storage t_algorithm_lib:maths linsolve.list[0] run scoreboard players set #tal.maths.linsolve.f tal.input 1
execute if score #tal.maths.linsolve.f tal.input matches 0 run data modify storage t_algorithm_lib:maths linsolve.list3 append from storage t_algorithm_lib:maths linsolve.main.list2

data modify storage t_algorithm_lib:maths linsolve.list4 set value []
data modify storage t_algorithm_lib:maths linsolve.list4 append from storage t_algorithm_lib:maths linsolve.list[]
data remove storage t_algorithm_lib:maths linsolve.list4[0]
data modify storage t_algorithm_lib:maths linsolve.list3 append from storage t_algorithm_lib:maths linsolve.list4[]

data modify storage t_algorithm_lib:maths determinant.expansion.input set from storage t_algorithm_lib:maths linsolve.list3
scoreboard players set #tal.maths.determinant.time tal.input 500
scoreboard players set #tal.maths.determinant.remind tal.input 0
##[返回结果]
data get storage t_algorithm_lib:maths determinant.expansion.result
function t_algorithm_lib:maths/determinant/expansion/start

execute store result score #tal.maths.linsolve.num tal.input run data get storage t_algorithm_lib:maths determinant.expansion.result 100000
execute store result score #tal.maths.linsolve.num2 tal.input run data get storage t_algorithm_lib:maths linsolve.main.value 100

data modify storage t_algorithm_lib:maths linsolve.result append value 0.0
execute store result storage t_algorithm_lib:maths linsolve.result[-1] double 0.001 run scoreboard players operation #tal.maths.linsolve.num tal.input /= #tal.maths.linsolve.num2 tal.input





data modify storage t_algorithm_lib:maths linsolve.list2 append from storage t_algorithm_lib:maths linsolve.list[0]
data remove storage t_algorithm_lib:maths linsolve.list[0]
execute store result score #tal.maths.linsolve.count2 tal.input run data get storage t_algorithm_lib:maths linsolve.list
execute if score #tal.maths.linsolve.count2 tal.input matches 1.. run function t_algorithm_lib:maths/linsolve/main/loop