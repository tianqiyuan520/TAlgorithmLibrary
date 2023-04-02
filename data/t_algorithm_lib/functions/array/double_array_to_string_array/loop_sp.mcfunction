#判断数字
data modify storage t_algorithm_lib:array double_array_to_string_array.char set from storage t_algorithm_lib:array double_array_to_string_array.input[-1]

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:0} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "0"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[0]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "0"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:1} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "1"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[1]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "1"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:2} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "2"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[2]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "2"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:3} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "3"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[3]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "3"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:4} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "4"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[4]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "4"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:5} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "5"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[5]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "5"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:6} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "6"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[6]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "6"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:7} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "7"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[7]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "7"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:8} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "8"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[8]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "8"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:9} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "9"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[9]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "9"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:10} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "9"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:[10]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "9"

execute if data storage t_algorithm_lib:array double_array_to_string_array{char:["."]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "."
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:["+"]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "+"
execute if data storage t_algorithm_lib:array double_array_to_string_array{char:["-"]} run data modify storage t_algorithm_lib:array double_array_to_string_array.result prepend value "-"


data remove storage t_algorithm_lib:array double_array_to_string_array.input[-1]

execute store result score #tal.array.DATSA.list_count tal.input run data get storage t_algorithm_lib:array double_array_to_string_array.input
execute if score #tal.array.DATSA.list_count tal.input matches 1.. run function t_algorithm_lib:array/double_array_to_string_array/loop_sp
