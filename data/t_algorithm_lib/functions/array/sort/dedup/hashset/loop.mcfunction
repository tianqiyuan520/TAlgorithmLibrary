scoreboard players set #tal.array.dedup.no_contain tal.input 0
scoreboard players set #tal.array.dedup.no_contain_f tal.input 0
##判断
scoreboard players set #tal.array.dedup.check_uuid tal.input 0
function t_algorithm_lib:array/sort/dedup/hashset/check
##赋值
#生成新实体
execute if score #tal.array.dedup.no_contain_f tal.input matches 0 if score #tal.array.dedup.no_contain tal.input matches 0 run function t_algorithm_lib:array/sort/dedup/hashset/summon
execute if score #tal.array.dedup.no_contain tal.input matches 1 run data modify storage t_algorithm_lib:array dedup.return append from storage t_algorithm_lib:array dedup.list2[0]



scoreboard players add #tal.array.dedup.ele_c tal.input 1
data remove storage t_algorithm_lib:array dedup.list2[0]
execute store result score #tal.array.dedup.list_count tal.input run data get storage t_algorithm_lib:array dedup.list2
execute if score #tal.array.dedup.list_count tal.input matches 1.. run function t_algorithm_lib:array/sort/dedup/hashset/loop