summon armor_stand ~ ~ ~ {Tags:["tal.array.random.entity","tal.array.random.entity.new"],NoGravity:1b,Invulnerable:1b,HandItems:[{id:"minecraft:dirt",Count:1b,tag:{TAL:{array:{element:''}}}}]}


execute as @e[tag=tal.array.random.entity.new,sort=nearest,distance=..1,limit=1] run data modify entity @s HandItems[0].tag.TAL.array.element set from storage t_algorithm_lib:array random.list[0]
execute as @e[tag=tal.array.random.entity.new,sort=nearest,distance=..1,limit=1] run tag @s remove tal.array.random.entity.new


data remove storage t_algorithm_lib:array random.list[0]
execute store result score #tal.array.random.list_count tal.str_parser run data get storage t_algorithm_lib:array random.list
execute if score #tal.array.random.list_count tal.str_parser matches 1.. run function t_algorithm_lib:array/sort/random/loop