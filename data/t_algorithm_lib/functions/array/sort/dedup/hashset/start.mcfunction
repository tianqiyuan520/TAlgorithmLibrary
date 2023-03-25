###快速-数组元素去重 (HashSet法去重)

##源数据 参数
##数据
##主数据
# data modify storage t_algorithm_lib:array dedup.list set value [[3],['2'],[['2']],['这'],[3],[9],[[I;1,2,3]],['就'],['就'],['就'],[9]]
##遍历时判断的
data modify storage t_algorithm_lib:array dedup.list2 set from storage t_algorithm_lib:array dedup.list
##结果
data modify storage t_algorithm_lib:array dedup.return set value []
##分组个数
scoreboard players set #tal.array.dedup.groups tal.str_parser 0
##元素个数
scoreboard players set #tal.array.dedup.ele_c tal.str_parser 1

setblock -29999996 4 2022222 minecraft:oak_sign{Text1:'{"text":"快速去重算法"}'} 


scoreboard players set #tal.array.dedup.check_uuid tal.str_parser 0

execute positioned -29999996 4 2022222 run summon armor_stand ~ ~ ~ {Tags:["tal.dedup.entity"]}
execute positioned -29999996 4 2022222 run scoreboard players operation @e[distance=..1,tag=tal.dedup.entity] tal.str_parser = #tal.array.dedup.check_uuid tal.str_parser
execute positioned -29999996 4 2022222 run data modify entity @e[distance=..1,tag=tal.dedup.entity,limit=1] Tags append from storage t_algorithm_lib:array dedup.list2[0]


execute store result score #tal.array.dedup.list_count tal.str_parser run data get storage t_algorithm_lib:array dedup.list2
execute if score #tal.array.dedup.list_count tal.str_parser matches 1.. positioned -29999996 4 2022222 run function t_algorithm_lib:array/sort/dedup/hashset/loop

execute positioned -29999996 4 2022222 run kill @e[tag=tal.dedup.entity,distance=..2]