##算术平均数

##[自定义输入] 数字数组
# data modify storage t_algorithm_lib:maths statistics_utils.mean.input set value [1,3,2]
##返回结果
data modify storage t_algorithm_lib:maths statistics_utils.mean.result set value 0

scoreboard players set #tal.maths.statistics_utils.result tal.input 0
data modify storage t_algorithm_lib:maths statistics_utils.mean.list set from storage t_algorithm_lib:maths statistics_utils.mean.input
execute store result score #tal.maths.statistics_utils.num tal.input run data get storage t_algorithm_lib:maths statistics_utils.mean.list
execute if score #tal.maths.statistics_utils.num tal.input matches 1.. run function t_algorithm_lib:maths/statistics_utils/mean/loop

execute store result score #tal.maths.statistics_utils.num tal.input run data get storage t_algorithm_lib:maths statistics_utils.mean.input
execute store result storage t_algorithm_lib:maths statistics_utils.mean.result double 0.001 run scoreboard players operation #tal.maths.statistics_utils.result tal.input /= #tal.maths.statistics_utils.num tal.input
