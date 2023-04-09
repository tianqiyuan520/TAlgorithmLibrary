##双循环 类似暴力搜索去重
##输入值
data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.list set from storage t_algorithm_lib:maths polynomial.temp.data2
##输入 值为0,0,...的映射值  用来判断该指针位置的元素是否为重复元素
data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.isDedup set from storage t_algorithm_lib:maths polynomial.temp.data3
##返回值
data modify storage t_algorithm_lib:maths polynomial.generalize.dedup.return set value []

#
function t_algorithm_lib:maths/polynomial/simplify/general/dedup/main/start

