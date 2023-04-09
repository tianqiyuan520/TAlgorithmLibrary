###移除数组n个元素

##[自定义输入] 数组
# data modify storage t_algorithm_lib:array remove.list set value []
##[自定义输入]个数
# scoreboard players set #tal.array.remove.n tal.input 1


execute store result score #tal.array.remove.list_count tal.input run data get storage t_algorithm_lib:array remove.list
execute if score #tal.array.remove.n tal.input matches 1.. if score #tal.array.remove.list_count tal.input >= #tal.array.remove.n tal.input if score #tal.array.remove.list_count tal.input matches 1.. run function t_algorithm_lib:array/remove/loop

##结果
data modify storage t_algorithm_lib:array remove.return set from storage t_algorithm_lib:array remove.list
