##补位
##[1,0] -> [0,1,0]


##[自定义输入]数组
# data modify storage t_algorithm_lib:array binary_bit.fill.list set value []
##[自定义输入]数组2
# data modify storage t_algorithm_lib:array binary_bit.fill.list2 set value []

execute store result score #tal.array.binary_bit.not.num tal.str_parser run data get storage t_algorithm_lib:array binary_bit.fill.list
execute store result score #tal.array.binary_bit.not.num2 tal.str_parser run data get storage t_algorithm_lib:array binary_bit.fill.list2
execute unless score #tal.array.binary_bit.not.num tal.str_parser = #tal.array.binary_bit.not.num2 tal.str_parser run function t_algorithm_lib:array/binary_bit/fill/loop