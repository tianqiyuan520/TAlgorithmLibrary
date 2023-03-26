##向量加减（二元运算）

##[自定义输入] 一维数组1
# data modify storage t_algorithm_lib:maths vector.add.vector1 set value [1,2,3]
##[自定义输入] 一维数组2
# data modify storage t_algorithm_lib:maths vector.add.vector2 set value [3,2,2]
##返回结果 一维数组
data modify storage t_algorithm_lib:maths vector.add.result set value []
##[自定义输入] 加法模式或减法模式 (1/-1)
# scoreboard players set #tal.maths.vector.add.mod tal.str_parser 1




execute store result score #tal.maths.vector.add.num tal.str_parser run data get storage t_algorithm_lib:maths vector.add.vector1
execute store result score #tal.maths.vector.add.loop tal.str_parser run data get storage t_algorithm_lib:maths vector.add.vector1
execute store result score #tal.maths.vector.add.num2 tal.str_parser run data get storage t_algorithm_lib:maths vector.add.vector2
execute unless score #tal.maths.vector.add.num tal.str_parser = #tal.maths.vector.add.num2 tal.str_parser run tellraw @a [{"text":"wrong"}]
execute if score #tal.maths.vector.add.num tal.str_parser = #tal.maths.vector.add.num2 tal.str_parser if score #tal.maths.vector.add.loop tal.str_parser matches 1.. run function t_algorithm_lib:maths/vector/add/loop
