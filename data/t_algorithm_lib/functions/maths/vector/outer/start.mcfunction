##内积

##[自定义输入] 一维数组
# data modify storage t_algorithm_lib:maths vector.outer.vector1 set value [1,2,3]
##[自定义输入] 一维数组
# data modify storage t_algorithm_lib:maths vector.outer.vector2 set value [3,2,1]
##返回结果 数组
data modify storage t_algorithm_lib:maths vector.outer.result set value []
##
scoreboard players set #tal.maths.vector.outer.sum tal.str_parser 0


execute store result score #tal.maths.vector.outer.num tal.str_parser run data get storage t_algorithm_lib:maths vector.outer.vector1
execute store result score #tal.maths.vector.outer.num2 tal.str_parser run data get storage t_algorithm_lib:maths vector.outer.vector2
scoreboard players set #tal.maths.vector.outer.fail tal.str_parser 0
execute unless score #tal.maths.vector.outer.num tal.str_parser = #tal.maths.vector.outer.num2 tal.str_parser run scoreboard players set #tal.maths.vector.outer.fail tal.str_parser 1
execute if score #tal.maths.vector.outer.num tal.str_parser matches 4.. run scoreboard players set #tal.maths.vector.outer.fail tal.str_parser 1
execute if score #tal.maths.vector.outer.num2 tal.str_parser matches 4.. run scoreboard players set #tal.maths.vector.outer.fail tal.str_parser 1

execute if score #tal.maths.vector.outer.fail tal.str_parser matches 1 run tellraw @a [{"text":"wrong"}]

execute if score #tal.maths.vector.outer.fail tal.str_parser matches 0 if score #tal.maths.vector.outer.num tal.str_parser matches 2 run function t_algorithm_lib:maths/vector/outer/main1
execute if score #tal.maths.vector.outer.fail tal.str_parser matches 0 if score #tal.maths.vector.outer.num tal.str_parser matches 3 run function t_algorithm_lib:maths/vector/outer/main2
