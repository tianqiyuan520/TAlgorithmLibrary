###同类型列表合并（不去重） 
##[自定义]列表1参数
# data modify storage t_algorithm_lib:array list_operation.union.list set value [["2"],[333]]
##[自定义]列表2参数
# data modify storage t_algorithm_lib:array list_operation.union.list2 set value [[11],["5"]]
data modify storage t_algorithm_lib:array list_operation.union.list append from storage t_algorithm_lib:array list_operation.union.list2[]
