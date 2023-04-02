###将数组的元素转化为 数组包元素
##主要用来解析 数字的位数上的信息
##["1","2",".","3"] -> [["1"],["2"],["."],["3"]]或[[1],[2],["."],[3]]


##[自定义输入]数组
# data modify storage t_algorithm_lib:array temp.list_ set value []
data modify storage t_algorithm_lib:array temp.list2 set value []


function t_algorithm_lib:array/array_to_array_have_array/loop
##返回结果
data modify storage t_algorithm_lib:array temp.return set from storage t_algorithm_lib:array temp.list2
