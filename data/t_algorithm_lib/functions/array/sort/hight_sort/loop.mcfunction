summon armor_stand ~ ~ ~ {Tags:["tal.array.hight_sort.entity"],NoGravity:1b,Invulnerable:1b}


# execute as @e[tag=tal.array.hight_sort.entity,sort=nearest,distance=..1,limit=1] run data modify entity @s Pos[1] set from storage t_algorithm_lib:array hight_sort.list[0]
execute as @e[tag=tal.array.hight_sort.entity,sort=nearest,distance=..1,limit=1] store result entity @s Pos[1] double 0.01 run data get storage t_algorithm_lib:array hight_sort.list[0] 100



data remove storage t_algorithm_lib:array hight_sort.list[0]
execute store result score #tal.array.hight_sort.list_count tal.input run data get storage t_algorithm_lib:array hight_sort.list
execute if score #tal.array.hight_sort.list_count tal.input matches 1.. run function t_algorithm_lib:array/sort/hight_sort/loop