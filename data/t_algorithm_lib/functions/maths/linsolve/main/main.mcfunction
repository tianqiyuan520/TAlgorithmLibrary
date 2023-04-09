##获取x的个数
execute store result score #tal.maths.linsolve.count tal.input run data modify storage t_algorithm_lib:maths linsolve.list set from storage t_algorithm_lib:maths linsolve.main.list

data modify storage t_algorithm_lib:maths linsolve.result set value []
data modify storage t_algorithm_lib:maths linsolve.list2 set value []

execute if score #tal.maths.linsolve.count tal.input matches 1.. run function t_algorithm_lib:maths/linsolve/main/loop