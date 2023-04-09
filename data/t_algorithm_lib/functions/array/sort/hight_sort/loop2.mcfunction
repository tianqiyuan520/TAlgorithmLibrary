
execute if score #tal.array.hight_sort.num tal.input matches 1 as @e[tag=tal.array.hight_sort.entity,sort=nearest,dy=100000000000000000000000000000000000000000000000000,limit=1] run data modify storage t_algorithm_lib:array hight_sort.list2 append from entity @s Pos[1]
execute unless score #tal.array.hight_sort.num tal.input matches 1 as @e[tag=tal.array.hight_sort.entity,sort=furthest,dy=100000000000000000000000000000000000000000000000000,limit=1] run data modify storage t_algorithm_lib:array hight_sort.list2 append from entity @s Pos[1]

execute if score #tal.array.hight_sort.num tal.input matches 1 run kill @e[tag=tal.array.hight_sort.entity,sort=nearest,dy=100000000000000000000000000000000000000000000000000,limit=1]
execute unless score #tal.array.hight_sort.num tal.input matches 1 run kill @e[tag=tal.array.hight_sort.entity,sort=furthest,dy=100000000000000000000000000000000000000000000000000,limit=1]
execute positioned -29999996 -1000000000 2022224 if entity @e[tag=tal.array.hight_sort.entity,dy=100000000000000000000000000000000000000000000000000] run function t_algorithm_lib:array/sort/hight_sort/loop2