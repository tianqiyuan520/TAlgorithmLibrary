##若在括号下，则进行该添加模式
data modify storage t_algorithm_lib:maths auto_derivation.temp.data2[-1] append value []
data modify storage t_algorithm_lib:maths auto_derivation.temp.data2[-1][-1] append from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]