###高度排序法
##对数组进行排序 (仅限Double数字元素的数组)  (-1000000000到...)

##源数据 参数
##数据
# data modify storage t_algorithm_lib:array hight_sort.list set value [5d,4d,6d,8d,1d,-300d]
##结果
data modify storage t_algorithm_lib:array hight_sort.list2 set value []
##正序或逆序
## 1为正序 2为逆序
# scoreboard players set #tal.array.hight_sort.num tal.str_parser 1

##生成实体
execute positioned -29999996 0 2022224 run function t_algorithm_lib:array/sort/hight_sort/loop

##读取实体的高度
execute positioned -29999996 -1000000000 2022224 run function t_algorithm_lib:array/sort/hight_sort/loop2

data modify storage t_algorithm_lib:array hight_sort.return set from storage t_algorithm_lib:array hight_sort.list2
scoreboard players set #tal.array.hight_sort.num tal.str_parser 1