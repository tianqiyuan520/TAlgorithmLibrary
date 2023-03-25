data modify storage t_algorithm_lib:maths taylor_expansion.temp.list_check.char set from storage t_algorithm_lib:maths taylor_expansion.input[0]
execute if data storage t_algorithm_lib:maths taylor_expansion.temp.list_check{char:'x'} run data modify storage t_algorithm_lib:maths taylor_expansion.input2 append value 'a'
execute unless data storage t_algorithm_lib:maths taylor_expansion.temp.list_check{char:'x'} run data modify storage t_algorithm_lib:maths taylor_expansion.input2 append from storage t_algorithm_lib:maths taylor_expansion.input[0]





data remove storage t_algorithm_lib:maths taylor_expansion.input[0]
execute store result score #tal.maths.taylor_expansion.list_count tal.str_parser run data get storage t_algorithm_lib:maths taylor_expansion.input
execute if score #tal.maths.taylor_expansion.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/taylor_expansion/loop_change_x_to_a