data modify storage t_algorithm_lib:maths integrate.temp.list set from storage t_algorithm_lib:maths integrate.main.new_data[0]
data remove storage t_algorithm_lib:maths integrate.temp.list[0]
data remove storage t_algorithm_lib:maths integrate.temp.list[-1]
##分离逗号左右
data modify storage t_algorithm_lib:maths integrate.temp.list2 set from storage t_algorithm_lib:maths integrate.temp.list
function t_algorithm_lib:maths/integrate/indefinite_integral/separate/commas/start

## 真数
data modify storage t_algorithm_lib:maths integrate.temp.a set from storage t_algorithm_lib:maths integrate.temp.list3[1]
## 底数
data modify storage t_algorithm_lib:maths integrate.temp.b set from storage t_algorithm_lib:maths integrate.temp.list3[0]
data modify storage t_algorithm_lib:maths integrate.temp.a append value [')']
data modify storage t_algorithm_lib:maths integrate.temp.b append value [')']
data modify storage t_algorithm_lib:maths integrate.temp.a prepend value ['ln(']
data modify storage t_algorithm_lib:maths integrate.temp.b prepend value ['ln(']
data modify storage t_algorithm_lib:maths integrate.temp.list2 set from storage t_algorithm_lib:maths integrate.temp.list3[0]
function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/1/check_have_x
execute if score #tal.maths.integrate.main.c-s tal.input matches 1 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/1/log_x
execute if score #tal.maths.integrate.main.c-s tal.input matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/der/per/1/log_n

