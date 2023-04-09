##算术平均数

##[自定义输入] 数字数组
# data modify storage t_algorithm_lib:maths statistics_utils.average.input set value [1,3,2]
##[自定义输入] 权重
# data modify storage t_algorithm_lib:maths statistics_utils.average.weight set value [1,2,1]
##[返回结果]
data modify storage t_algorithm_lib:maths statistics_utils.average.result set value 0

scoreboard players set #tal.maths.statistics_utils.weight tal.input 0
scoreboard players set #tal.maths.statistics_utils.sum tal.input 0
scoreboard players set #tal.maths.statistics_utils.result tal.input 0



data modify storage t_algorithm_lib:maths statistics_utils.average.list set from storage t_algorithm_lib:maths statistics_utils.average.input
data modify storage t_algorithm_lib:maths statistics_utils.average.list2 set from storage t_algorithm_lib:maths statistics_utils.average.weight
execute store result score #tal.maths.statistics_utils.num tal.input run data get storage t_algorithm_lib:maths statistics_utils.average.list
execute if score #tal.maths.statistics_utils.num tal.input matches 1.. run function t_algorithm_lib:maths/statistics_utils/average/loop

execute store result score #tal.maths.statistics_utils.num tal.input run data get storage t_algorithm_lib:maths statistics_utils.average.input
execute store result storage t_algorithm_lib:maths statistics_utils.average.result double 0.001 run scoreboard players operation #tal.maths.statistics_utils.result tal.input /= #tal.maths.statistics_utils.weight tal.input
