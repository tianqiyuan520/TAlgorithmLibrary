##二维运算
##遍历
data modify storage t_algorithm_lib:maths matrix.temp.list1 set from storage t_algorithm_lib:maths matrix.list1
data modify storage t_algorithm_lib:maths matrix.temp.list2 set from storage t_algorithm_lib:maths matrix.list2
data modify storage t_algorithm_lib:maths matrix.add.result set value []


function t_algorithm_lib:maths/matrix/add/2/loop
