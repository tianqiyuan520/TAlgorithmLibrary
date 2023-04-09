##回退子串
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:string kmp.next
scoreboard players operation #tal.array.get_element_by_index.index tal.input = #tal.str.kmp.index2 tal.input
scoreboard players remove #tal.array.get_element_by_index.index tal.input 1
function t_algorithm_lib:array/get_element_by_index/start
execute store result score #tal.str.kmp.index2 tal.input run data get storage t_algorithm_lib:array get_element_by_index.return