##内积

##[自定义输入] 一维数组
# data modify storage t_algorithm_lib:maths vector.outer.vector1 set value [1,2,3]
##[自定义输入] 一维数组
# data modify storage t_algorithm_lib:maths vector.outer.vector2 set value [3,2,1]
##[返回结果] 数组
data modify storage t_algorithm_lib:maths vector.outer.result set value []
##
scoreboard players set #tal.maths.vector.outer.sum tal.input 0


execute store result score #tal.maths.vector.outer.num tal.input run data get storage t_algorithm_lib:maths vector.outer.vector1
execute store result score #tal.maths.vector.outer.num2 tal.input run data get storage t_algorithm_lib:maths vector.outer.vector2
scoreboard players set #tal.maths.vector.outer.fail tal.input 0
execute unless score #tal.maths.vector.outer.num tal.input = #tal.maths.vector.outer.num2 tal.input run scoreboard players set #tal.maths.vector.outer.fail tal.input 1
execute if score #tal.maths.vector.outer.num tal.input matches 4.. run scoreboard players set #tal.maths.vector.outer.fail tal.input 1
execute if score #tal.maths.vector.outer.num2 tal.input matches 4.. run scoreboard players set #tal.maths.vector.outer.fail tal.input 1

execute if score #tal.maths.vector.outer.fail tal.input matches 1 run tellraw @a [{"text":"wrong"}]

execute if score #tal.maths.vector.outer.fail tal.input matches 0 if score #tal.maths.vector.outer.num tal.input matches 2 run function t_algorithm_lib:maths/vector/outer/main1
execute if score #tal.maths.vector.outer.fail tal.input matches 0 if score #tal.maths.vector.outer.num tal.input matches 3 run function t_algorithm_lib:maths/vector/outer/main2
