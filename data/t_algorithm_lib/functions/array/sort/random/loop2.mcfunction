
execute as @e[tag=!tal.array.random.entity2,tag=tal.array.random.entity,sort=random,limit=1,distance=..3] run tag @s add tal.array.random.entity2
execute as @e[tag=tal.array.random.entity2,sort=nearest,limit=1,distance=..5] run data modify storage t_algorithm_lib:array random.list2 append from entity @s HandItems[0].tag.TAL.array.element

kill @e[tag=tal.array.random.entity2,distance=..5]
execute if entity @e[tag=tal.array.random.entity,distance=..5] run function t_algorithm_lib:array/sort/random/loop2