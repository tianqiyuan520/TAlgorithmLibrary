


data modify storage t_algorithm_lib:array quick_sort.list append value {id:0,value:0.0}
data modify storage t_algorithm_lib:array quick_sort.list[-1].value set from storage t_algorithm_lib:array quick_sort.input_[0]
execute store result storage t_algorithm_lib:array quick_sort.list[-1].id int 1 run scoreboard players add #tal.array.quick_sort.id tal.input 1

data remove storage t_algorithm_lib:array quick_sort.input_[0]
execute store result score #tal.array.quick_sort.count tal.input run data get storage t_algorithm_lib:array quick_sort.input_

execute if score #tal.array.quick_sort.count tal.input matches 1.. run function t_algorithm_lib:array/sort/quick_sort/loop_add_id
