execute if score #tal.array.binary_bit.not.num tal.input > #tal.array.binary_bit.not.num2 tal.input run data modify storage t_algorithm_lib:array binary_bit.fill.list2 prepend value 0
execute if score #tal.array.binary_bit.not.num tal.input < #tal.array.binary_bit.not.num2 tal.input run data modify storage t_algorithm_lib:array binary_bit.fill.list prepend value 0


execute store result score #tal.array.binary_bit.not.num tal.input run data get storage t_algorithm_lib:array binary_bit.fill.list
execute store result score #tal.array.binary_bit.not.num2 tal.input run data get storage t_algorithm_lib:array binary_bit.fill.list2
execute unless score #tal.array.binary_bit.not.num tal.input = #tal.array.binary_bit.not.num2 tal.input run function t_algorithm_lib:array/binary_bit/fill/loop