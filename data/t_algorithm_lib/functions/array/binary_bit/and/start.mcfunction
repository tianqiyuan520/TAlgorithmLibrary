###二进制位操作
## 按位与

##[自定义输入]数组
# data modify storage t_algorithm_lib:array binary_bit.and.list set value []
##[自定义输入]数组2
# data modify storage t_algorithm_lib:array binary_bit.and.list2 set value []

##返回结果
data modify storage t_algorithm_lib:array binary_bit.and.result set value []

##补位
##[自定义输入]数组
data modify storage t_algorithm_lib:array binary_bit.fill.list set from storage t_algorithm_lib:array binary_bit.and.list
##[自定义输入]数组2
data modify storage t_algorithm_lib:array binary_bit.fill.list2 set from storage t_algorithm_lib:array binary_bit.and.list2
function t_algorithm_lib:array/binary_bit/fill/start
data modify storage t_algorithm_lib:array binary_bit.and.list set from storage t_algorithm_lib:array binary_bit.fill.list
data modify storage t_algorithm_lib:array binary_bit.and.list2 set from storage t_algorithm_lib:array binary_bit.fill.list2

execute store result score #tal.array.binary_bit.and.time tal.str_parser run data get storage t_algorithm_lib:array binary_bit.and.list
execute if score #tal.array.binary_bit.and.time tal.str_parser matches 1.. run function t_algorithm_lib:array/binary_bit/and/loop