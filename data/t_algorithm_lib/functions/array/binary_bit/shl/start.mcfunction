###二进制位操作
## 左移

##[自定义输入]数组
# data modify storage t_algorithm_lib:array binary_bit.shl.list set value []
##[自定义输入]位移个数
scoreboard players set #tal.array.binary_bit.shl.time tal.str_parser 0

##结束
scoreboard players set #tal.array.binary_bit.shl.end tal.str_parser 0

##返回结果
data modify storage t_algorithm_lib:array binary_bit.shl.result set from storage t_algorithm_lib:array binary_bit.shl.list

##特殊情况
execute store result score #tal.array.binary_bit.shl.num tal.str_parser run data get storage t_algorithm_lib:array binary_bit.shl.list
execute store result score #tal.array.binary_bit.shl.num2 tal.str_parser run data get storage t_algorithm_lib:array binary_bit.shl.list[0]
execute if score #tal.array.binary_bit.shl.num tal.str_parser matches 0..1 if score #tal.array.binary_bit.shl.num2 tal.str_parser matches 0 run scoreboard players set #tal.array.binary_bit.shl.end tal.str_parser 1
execute if score #tal.array.binary_bit.shl.num tal.str_parser matches 0..1 if score #tal.array.binary_bit.shl.num2 tal.str_parser matches 0 run data modify storage t_algorithm_lib:array binary_bit.shl.result set value [0]

execute if score #tal.array.binary_bit.shl.time tal.str_parser matches 1.. if score #tal.array.binary_bit.shl.end tal.str_parser matches 0 run function t_algorithm_lib:array/binary_bit/shl/loop