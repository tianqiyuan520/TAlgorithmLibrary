##回退子串
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:string kmp.next
scoreboard players operation #tal.array.get_element_by_index.index tal.str_parser = #tal.str.kmp.index2 tal.str_parser
scoreboard players remove #tal.array.get_element_by_index.index tal.str_parser 1
function t_algorithm_lib:array/get_element_by_index/start
execute store result score #tal.str.kmp.index2 tal.str_parser run data get storage t_algorithm_lib:array get_element_by_index.return