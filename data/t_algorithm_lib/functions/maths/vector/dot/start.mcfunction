##内积

##[自定义输入] 一维数组
# data modify storage t_algorithm_lib:maths vector.dot.vector1 set value [1,2,3]
##[自定义输入] 一维数组
# data modify storage t_algorithm_lib:maths vector.dot.vector2 set value [1,2,3]
##[返回结果] double
data modify storage t_algorithm_lib:maths vector.dot.result set value 0.0
##
scoreboard players set #tal.maths.vector.dot.sum tal.input 0


execute store result score #tal.maths.vector.dot.num tal.input run data get storage t_algorithm_lib:maths vector.dot.vector1
execute store result score #tal.maths.vector.dot.num2 tal.input run data get storage t_algorithm_lib:maths vector.dot.vector2
execute unless score #tal.maths.vector.dot.num tal.input = #tal.maths.vector.dot.num2 tal.input run tellraw @a [{"text":"wrong"}]
execute store result score #tal.maths.vector.dot.loop tal.input run data get storage t_algorithm_lib:maths vector.dot.vector1
execute if score #tal.maths.vector.dot.loop tal.input matches 1.. run function t_algorithm_lib:maths/vector/dot/loop

execute store result storage t_algorithm_lib:maths vector.dot.result double 0.001 run scoreboard players get #tal.maths.vector.dot.sum tal.input
