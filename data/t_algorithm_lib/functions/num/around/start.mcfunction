###四舍五入
##[自定义]输入数字
# data modify storage t_algorithm_lib:num around.input set value 1.5d
##返回结果
execute store result storage t_algorithm_lib:num around.result int -0.5 run data get storage t_algorithm_lib:num around.input -2.00000001