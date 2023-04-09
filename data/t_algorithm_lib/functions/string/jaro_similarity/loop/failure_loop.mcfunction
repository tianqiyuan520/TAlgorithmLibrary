##判断相等
scoreboard players set #tal.str.jaro_similarity.check tal.input 1
data modify storage t_algorithm_lib:string jaro_similarity.check set from storage t_algorithm_lib:string jaro_similarity.list1[0]

##根据指针获取数组数据
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:string jaro_similarity.list2
scoreboard players operation #tal.array.get_element_by_index.index tal.input = #tal.str.jaro_similarity.num tal.input
function t_algorithm_lib:array/get_element_by_index/start
execute store success score #tal.str.jaro_similarity.check tal.input run data modify storage t_algorithm_lib:string jaro_similarity.check set from storage t_algorithm_lib:array get_element_by_index.return
execute if score #tal.str.jaro_similarity.check tal.input matches 0 run function t_algorithm_lib:string/jaro_similarity/loop/success2


scoreboard players add #tal.str.jaro_similarity.num tal.input 1
execute if score #tal.str.jaro_similarity.num tal.input matches 0.. if score #tal.str.jaro_similarity.check tal.input matches 1 if score #tal.str.jaro_similarity.num tal.input < #tal.str.jaro_similarity.num2 tal.input run function t_algorithm_lib:string/jaro_similarity/loop/failure_loop
