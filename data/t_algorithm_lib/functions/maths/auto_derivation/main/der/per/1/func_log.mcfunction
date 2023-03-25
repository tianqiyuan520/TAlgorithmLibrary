data modify storage t_algorithm_lib:maths auto_derivation.temp.list set from storage t_algorithm_lib:maths auto_derivation.main.new_data[0]
data remove storage t_algorithm_lib:maths auto_derivation.temp.list[0]
data remove storage t_algorithm_lib:maths auto_derivation.temp.list[-1]
##分离逗号左右
data modify storage t_algorithm_lib:maths auto_derivation.temp.list2 set from storage t_algorithm_lib:maths auto_derivation.temp.list
function t_algorithm_lib:maths/auto_derivation/separate/commas/start

## 真数
data modify storage t_algorithm_lib:maths auto_derivation.temp.a set from storage t_algorithm_lib:maths auto_derivation.temp.list3[1]
## 底数
data modify storage t_algorithm_lib:maths auto_derivation.temp.b set from storage t_algorithm_lib:maths auto_derivation.temp.list3[0]
data modify storage t_algorithm_lib:maths auto_derivation.temp.a append value [')']
data modify storage t_algorithm_lib:maths auto_derivation.temp.b append value [')']
data modify storage t_algorithm_lib:maths auto_derivation.temp.a prepend value ['ln(']
data modify storage t_algorithm_lib:maths auto_derivation.temp.b prepend value ['ln(']
data modify storage t_algorithm_lib:maths auto_derivation.temp.list2 set from storage t_algorithm_lib:maths auto_derivation.temp.list3[0]
function t_algorithm_lib:maths/auto_derivation/main/der/per/1/check_have_x
execute if score #tal.maths.derivation.main.c-s tal.str_parser matches 1 run function t_algorithm_lib:maths/auto_derivation/main/der/per/1/log_x
execute if score #tal.maths.derivation.main.c-s tal.str_parser matches 0 run function t_algorithm_lib:maths/auto_derivation/main/der/per/1/log_n

