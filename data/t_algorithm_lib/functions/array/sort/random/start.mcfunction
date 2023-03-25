###将数组里的元素 随机化分布 (打乱)
##[1,3,2] -> [3,1,2]...

##源数据 参数
##数据
# data modify storage t_algorithm_lib:array random.list set value [1,3,2]
##结果
data modify storage t_algorithm_lib:array random.list2 set value []
##生成实体
execute positioned -29999996 0 2022224 run function t_algorithm_lib:array/sort/random/loop

##读取实体的高度
execute positioned -29999996 0 2022224 run function t_algorithm_lib:array/sort/random/loop2

data modify storage t_algorithm_lib:array random.return set from storage t_algorithm_lib:array random.list2