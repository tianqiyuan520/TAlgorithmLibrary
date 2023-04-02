summon armor_stand ~ ~ ~ {Tags:["tal.dedup.entity","new"]}
scoreboard players operation @e[distance=..1,tag=tal.dedup.entity,tag=new] tal.input = #tal.array.dedup.check_uuid tal.input
data modify entity @e[distance=..1,tag=tal.dedup.entity,tag=new,limit=1] Tags append from storage t_algorithm_lib:array dedup.list2[0]
tag @e[distance=..1,tag=tal.dedup.entity,tag=new] remove new
scoreboard players set #tal.array.dedup.no_contain tal.input 1
scoreboard players set #tal.array.dedup.groups tal.input 1