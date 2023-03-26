##中位数

##[自定义输入] 数字数组
# data modify storage t_algorithm_lib:maths statistics_utils.median.input set value [1,3,2]
##返回结果
data modify storage t_algorithm_lib:maths statistics_utils.median.result set value 0

##调用排序算法
data modify storage t_algorithm_lib:array hight_sort.list set from storage t_algorithm_lib:maths statistics_utils.median.input
##结果
data modify storage t_algorithm_lib:array hight_sort.list2 set value []
##正序或逆序
## 1为正序 2为逆序
scoreboard players set #tal.array.hight_sort.num tal.str_parser 1
function t_algorithm_lib:array/sort/hight_sort/start


data modify storage t_algorithm_lib:maths statistics_utils.median.list set from storage t_algorithm_lib:array hight_sort.list2
execute store result score #tal.maths.statistics_utils.check tal.str_parser run data get storage t_algorithm_lib:maths statistics_utils.median.list
execute store result score #tal.maths.statistics_utils.index tal.str_parser run data get storage t_algorithm_lib:maths statistics_utils.median.list
scoreboard players set #2 tal.str_parser 2
##判断奇偶
scoreboard players operation #tal.maths.statistics_utils.num tal.str_parser %= #2 tal.str_parser
execute if score #tal.maths.statistics_utils.check tal.str_parser matches 1 run scoreboard players add #tal.maths.statistics_utils.index tal.str_parser 1
scoreboard players operation #tal.maths.statistics_utils.index tal.str_parser /= #2 tal.str_parser

execute if score #tal.maths.statistics_utils.index tal.str_parser matches 1.. run function t_algorithm_lib:maths/statistics_utils/median/loop