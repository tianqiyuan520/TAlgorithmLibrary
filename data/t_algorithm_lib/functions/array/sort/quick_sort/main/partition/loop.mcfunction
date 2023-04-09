

execute store result score #tal.array.quick_sort.num tal.input run data get storage t_algorithm_lib:array quick_sort.part.input[0].value


##[自定义输入]值A
data modify storage t_algorithm_lib:num double_compare.input.num set from storage t_algorithm_lib:array quick_sort.part.input[0].value
##[自定义输入]值B
data modify storage t_algorithm_lib:num double_compare.input.num2 set from storage t_algorithm_lib:array quick_sort.part.p.value
##[返回结果] 1大,0相等,-1小于
data modify storage t_algorithm_lib:num double_compare.result set value 0
function t_algorithm_lib:num/double_compare/start

execute store result score #tal.array.quick_sort.num tal.input run data get storage t_algorithm_lib:num double_compare.result

execute if score #tal.array.quick_sort.num tal.input matches -1 run data modify storage t_algorithm_lib:array quick_sort.part.list append from storage t_algorithm_lib:array quick_sort.part.input[0]
execute if score #tal.array.quick_sort.num tal.input matches 1 run data modify storage t_algorithm_lib:array quick_sort.part.list2 append from storage t_algorithm_lib:array quick_sort.part.input[0]



data remove storage t_algorithm_lib:array quick_sort.part.input[0]
execute store result score #tal.array.quick_sort.count tal.input run data get storage t_algorithm_lib:array quick_sort.part.input
execute if score #tal.array.quick_sort.count tal.input matches 1.. run function t_algorithm_lib:array/sort/quick_sort/main/partition/loop