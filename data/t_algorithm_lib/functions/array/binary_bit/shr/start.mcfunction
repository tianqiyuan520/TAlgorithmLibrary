###二进制位操作
## 右移

##[自定义输入]数组
# data modify storage t_algorithm_lib:array binary_bit.shr.list set value []
##[自定义输入]位移个数
scoreboard players set #tal.array.binary_bit.shr.time tal.input 0

##结束
scoreboard players set #tal.array.binary_bit.shr.end tal.input 0

##返回结果
data modify storage t_algorithm_lib:array binary_bit.shr.result set from storage t_algorithm_lib:array binary_bit.shr.list

##特殊情况
execute store result score #tal.array.binary_bit.shr.num tal.input run data get storage t_algorithm_lib:array binary_bit.shr.list
execute store result score #tal.array.binary_bit.shr.num2 tal.input run data get storage t_algorithm_lib:array binary_bit.shr.list[0]
execute if score #tal.array.binary_bit.shr.num tal.input matches 0..1 if score #tal.array.binary_bit.shr.num2 tal.input matches 0 run scoreboard players set #tal.array.binary_bit.shr.end tal.input 1
execute if score #tal.array.binary_bit.shr.num tal.input matches 0..1 if score #tal.array.binary_bit.shr.num2 tal.input matches 0 run data modify storage t_algorithm_lib:array binary_bit.shr.result set value [0]

execute if score #tal.array.binary_bit.shr.time tal.input matches 1.. if score #tal.array.binary_bit.shr.end tal.input matches 0 run function t_algorithm_lib:array/binary_bit/shr/loop