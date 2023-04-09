##创建子串的next数组

##获取值判断

##判断相等
scoreboard players set #tal.str.kmp.check tal.input 1
##根据指针获取数组数据
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:string kmp.list2
scoreboard players operation #tal.array.get_element_by_index.index tal.input = #tal.str.kmp.index2 tal.input
function t_algorithm_lib:array/get_element_by_index/start
data modify storage t_algorithm_lib:string kmp.check set from storage t_algorithm_lib:array get_element_by_index.return
#
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:string kmp.list2
scoreboard players operation #tal.array.get_element_by_index.index tal.input = #tal.str.kmp.index tal.input
function t_algorithm_lib:array/get_element_by_index/start
execute store success score #tal.str.kmp.check tal.input run data modify storage t_algorithm_lib:string kmp.check set from storage t_algorithm_lib:array get_element_by_index.return
##如果匹配
execute if score #tal.str.kmp.check tal.input matches 0 run function t_algorithm_lib:string/kmp/build_next_array/success
execute if score #tal.str.kmp.check tal.input matches 1 if score #tal.str.kmp.index2 tal.input matches 0 run scoreboard players add #tal.str.kmp.index tal.input 1
execute if score #tal.str.kmp.check tal.input matches 1 if score #tal.str.kmp.index2 tal.input matches 0 run data modify storage t_algorithm_lib:string kmp.next append value 0
execute if score #tal.str.kmp.check tal.input matches 1 unless score #tal.str.kmp.index2 tal.input matches 0 run scoreboard players remove #tal.str.kmp.index2 tal.input 1


execute store result score #tal.str.kmp.list_count tal.input run data get storage t_algorithm_lib:string kmp.list2
execute if score #tal.str.kmp.index tal.input < #tal.str.kmp.list_count tal.input run function t_algorithm_lib:string/kmp/build_next_array/loop