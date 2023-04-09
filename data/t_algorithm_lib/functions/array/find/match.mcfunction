data modify storage t_algorithm_lib:array find.return append value 0
execute store result storage t_algorithm_lib:array find.return[-1] int 1 run scoreboard players get #tal.array.find.index tal.input
##移除对应的个数
data modify storage t_algorithm_lib:array remove.list set from storage t_algorithm_lib:array find.list
scoreboard players operation #tal.array.remove.n tal.input = #tal.array.find.list_count2 tal.input
function t_algorithm_lib:array/remove/start
##读取结果
data modify storage t_algorithm_lib:array find.list set from storage t_algorithm_lib:array remove.return
##指针 + 跳过的元素个数
scoreboard players operation #tal.array.find.index tal.input += #tal.array.find.list_count2 tal.input
scoreboard players remove #tal.array.find.index tal.input 1

