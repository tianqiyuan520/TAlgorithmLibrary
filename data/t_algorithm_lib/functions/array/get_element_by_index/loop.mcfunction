## 指针(0-1024) 大于等于 1025个时
execute if score #tal.array.get_element_by_index.index tal.str_parser matches 1025.. run function t_algorithm_lib:array/get_element_by_index/remove
##根据指针获取数据
function t_algorithm_lib:array/get_element_by_index/get