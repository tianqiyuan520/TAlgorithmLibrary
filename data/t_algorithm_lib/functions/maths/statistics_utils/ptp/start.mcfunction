##极差

##[自定义输入] 数字数组
# data modify storage t_algorithm_lib:maths statistics_utils.ptp.input set value [1,3,2]

##调用排序算法
data modify storage t_algorithm_lib:array hight_sort.list set from storage t_algorithm_lib:maths statistics_utils.ptp.input
##结果
data modify storage t_algorithm_lib:array hight_sort.list2 set value []
##正序或逆序
## 1为正序 2为逆序
scoreboard players set #tal.array.hight_sort.num tal.input 1

function t_algorithm_lib:array/sort/hight_sort/start

execute store result score #tal.maths.statistics_utils.num tal.input run data get storage t_algorithm_lib:array hight_sort.list2[-1] 1000
execute store result score #tal.maths.statistics_utils.num2 tal.input run data get storage t_algorithm_lib:array hight_sort.list2[0] 1000

# data modify storage t_algorithm_lib:maths statistics_utils.ptp.result set value 0.0d
##[返回结果]
execute store result storage t_algorithm_lib:maths statistics_utils.ptp.result double 0.001 run scoreboard players operation #tal.maths.statistics_utils.num tal.input -= #tal.maths.statistics_utils.num2 tal.input
