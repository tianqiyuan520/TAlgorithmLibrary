###随机选取

##[自定义输入] 数组
# data modify storage t_algorithm_lib:num random.choice.input set value []

data modify storage t_algorithm_lib:num random.uniform.input.num1 set value 0d
execute store result storage t_algorithm_lib:num random.uniform.input.num2 int 1 if data storage t_algorithm_lib:num random.choice.input[]
function t_algorithm_lib:num/random/uniform/start
data modify storage t_algorithm_lib:array get_element_by_index.list set from storage t_algorithm_lib:num random.choice.input
execute store result score #tal.array.get_element_by_index.index tal.input run data get storage t_algorithm_lib:num random.uniform.result
function t_algorithm_lib:array/get_element_by_index/start
##[返回结果] 随机指针所指的值
data modify storage t_algorithm_lib:num random.choice.result set from storage t_algorithm_lib:array get_element_by_index.list2