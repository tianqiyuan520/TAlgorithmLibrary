##方差

##[自定义输入] 数字数组
# data modify storage t_algorithm_lib:maths statistics_utils.var.input set value [1,3,2]
##返回结果
data modify storage t_algorithm_lib:maths statistics_utils.var.result set value 0

scoreboard players set #tal.maths.statistics_utils.result tal.input 0

##获取平均数
##[自定义输入] 数字数组
data modify storage t_algorithm_lib:maths statistics_utils.mean.input set from storage t_algorithm_lib:maths statistics_utils.var.input
function t_algorithm_lib:maths/statistics_utils/mean/start


data modify storage t_algorithm_lib:maths statistics_utils.var.mean_num set from storage t_algorithm_lib:maths statistics_utils.mean.result

execute store result score #tal.maths.statistics_utils.num tal.input run data get storage t_algorithm_lib:maths statistics_utils.var.list
execute if score #tal.maths.statistics_utils.num tal.input matches 1.. run function t_algorithm_lib:maths/statistics_utils/var/loop

execute store result storage t_algorithm_lib:maths statistics_utils.average.result double 0.0001 run scoreboard players get #tal.maths.statistics_utils.result tal.input
