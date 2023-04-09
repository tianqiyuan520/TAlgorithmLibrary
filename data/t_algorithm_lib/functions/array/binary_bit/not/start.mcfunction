###二进制位操作
## 按位非

##[自定义输入]数组
# data modify storage t_algorithm_lib:array binary_bit.not.list set value []

##[返回结果]
data modify storage t_algorithm_lib:array binary_bit.not.result set value []

execute store result score #tal.array.binary_bit.not.time tal.input run data get storage t_algorithm_lib:array binary_bit.not.list

execute if score #tal.array.binary_bit.not.time tal.input matches 1.. run function t_algorithm_lib:array/binary_bit/not/loop