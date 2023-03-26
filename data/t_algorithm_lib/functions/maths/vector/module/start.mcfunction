##取模

##[自定义输入] 一维数组
# data modify storage t_algorithm_lib:maths vector.module.vector1 set value [1,2,3]
##[自定义输入][可选] 一维数组（若输入，则结果为 |向量B-向量A|）
# data modify storage t_algorithm_lib:maths vector.module.vector2 set value [1,2,3]
##返回结果 double
data modify storage t_algorithm_lib:maths vector.module.result set value 0.0
##
scoreboard players set #tal.maths.vector.module.sum tal.str_parser 0
scoreboard players set #tal.maths.vector.module.mod tal.str_parser 0




execute store result score #tal.maths.vector.module.num tal.str_parser run data get storage t_algorithm_lib:maths vector.module.vector1
execute if data storage t_algorithm_lib:maths vector.module.vector2 store result score #tal.maths.vector.module.num2 tal.str_parser run data get storage t_algorithm_lib:maths vector.module.vector2
execute if data storage t_algorithm_lib:maths vector.module.vector2 store result score #tal.maths.vector.module.num2 tal.str_parser run scoreboard players set #tal.maths.vector.module.mod tal.str_parser 1

execute unless data storage t_algorithm_lib:maths vector.module.vector2 store result score #tal.maths.vector.module.num2 tal.str_parser run data get storage t_algorithm_lib:maths vector.module.vector1

execute unless score #tal.maths.vector.module.num tal.str_parser = #tal.maths.vector.module.num2 tal.str_parser run tellraw @a [{"text":"wrong"}]

execute store result score #tal.maths.vector.module.loop tal.str_parser run data get storage t_algorithm_lib:maths vector.module.vector1
execute if score #tal.maths.vector.module.loop tal.str_parser matches 1.. run function t_algorithm_lib:maths/vector/module/loop
data remove storage t_algorithm_lib:maths vector.module.vector2

##调用开根
execute store result storage t_algorithm_lib:maths sqrt.input double 0.001 run scoreboard players get #tal.maths.vector.module.sum tal.str_parser
function t_algorithm_lib:maths/sqrt/start
data modify storage t_algorithm_lib:maths vector.module.result set from storage t_algorithm_lib:maths sqrt.result
