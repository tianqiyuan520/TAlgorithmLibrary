###Double 转 列表
##1.23d -> [[1],['.'],[2],[3]]
##若是负数，则输出 数组与记分板#tal.array.double_to_array.negative tal.input
##采用facing代替distance，避免double溢出
##新采用谓词代替facing（因为facing范围10^155）
##[自定义输入]Double类型的值  t_algorithm_lib:array double_to_array.num
# data modify storage t_algorithm_lib:array double_to_array.num set value 0.23


##非0，转化为0
data modify storage t_algorithm_lib:array double_to_array.list set value [3.0]
scoreboard players set #tal.array.double_to_array.no_double tal.input 0
execute store success score #tal.array.double_to_array.num tal.input run data modify storage t_algorithm_lib:array double_to_array.list append from storage t_algorithm_lib:array double_to_array.num
execute if score #tal.array.double_to_array.num tal.input matches 0 run scoreboard players set #tal.array.double_to_array.no_double tal.input 1
execute if score #tal.array.double_to_array.num tal.input matches 0 store result storage t_algorithm_lib:array double_to_array.num double 1 run data get storage t_algorithm_lib:array double_to_array.num

##判断整数位为0
execute store result score #tal.array.double_to_array.num_zero tal.input run data get storage t_algorithm_lib:array double_to_array.num
##该数字的正负性 0非负 1负
scoreboard players set #tal.array.double_to_array.negative tal.input 0
scoreboard players set #-1 tal.input -1
execute store result score #tal.array.double_to_array.num tal.input run data get storage t_algorithm_lib:array
scoreboard players set #tal.array.double_to_array.end tal.input 0

data modify storage t_algorithm_lib:array double_to_array.list set value []
data modify storage t_algorithm_lib:array double_to_array.result set value []
#字符串类型列表
# data modify storage t_algorithm_lib:array double_to_array.result2 set value []

function t_algorithm_lib:array/double_to_array/init

data modify entity 00000000-0000-1d63-0000-000700000001 Pos[1] set from storage t_algorithm_lib:array double_to_array.num
data modify entity 00000000-0000-1d63-0000-000700000002 Pos[1] set value 0.0d
data modify entity 00000000-0000-1d63-0000-000700000003 Pos[1] set value -0.1d

#级
scoreboard players set #tal.array.double_to_array.tier tal.input 0
#迭代总数
scoreboard players set #tal.array.double_to_array.total tal.input 30000
data modify storage t_algorithm_lib:array double_to_array.result append value [0]
# execute as 00000000-0000-1d63-0000-000700000001 at @s run tellraw @a [{"nbt":"Pos[1]","entity": "@s"}]


execute as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/check_negative
execute if score #tal.array.double_to_array.negative tal.input matches 0 run data modify entity 00000000-0000-1d63-0000-000700000003 Pos[1] set value -1d
execute if score #tal.array.double_to_array.negative tal.input matches 1 run data modify entity 00000000-0000-1d63-0000-000700000003 Pos[1] set value 1d
execute as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/select

##处理 x.0
execute store result score #tal.array.double_to_array.count2 tal.input run data get storage t_algorithm_lib:array double_to_array.result[-2][0]
data modify storage t_algorithm_lib:array double_to_array.char set from storage t_algorithm_lib:array double_to_array.result[-3][0]
execute if score #tal.array.double_to_array.count2 tal.input matches 10 if data storage t_algorithm_lib:array double_to_array{char:"."} run data modify storage t_algorithm_lib:array double_to_array.result[-2][0] set value 0
execute if score #tal.array.double_to_array.count2 tal.input matches 10 if data storage t_algorithm_lib:array double_to_array{char:"."} store result score #tal.array.double_to_array.num tal.input run data get storage t_algorithm_lib:array double_to_array.result[-4][0]
execute if score #tal.array.double_to_array.count2 tal.input matches 10 if data storage t_algorithm_lib:array double_to_array{char:"."} store result storage t_algorithm_lib:array double_to_array.result[-4][0] int 1 run scoreboard players add #tal.array.double_to_array.num tal.input 1


# scoreboard players set #tal.array.double_to_array.tier tal.input 308
# execute as 00000000-0000-1d63-0000-000700000001 at @s run function t_algorithm_lib:array/double_to_array/loop/integer/tp_308
##[返回结果]
#data get storage t_algorithm_lib:array double_to_array.result

execute unless data storage t_algorithm_lib:array double_to_array.num run data modify storage t_algorithm_lib:array double_to_array.num set value 3.23