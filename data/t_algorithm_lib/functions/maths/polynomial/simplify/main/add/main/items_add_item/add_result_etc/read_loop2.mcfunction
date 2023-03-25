data modify storage t_algorithm_lib:maths polynomial.temp.list[0][-1][0] append from storage t_algorithm_lib:maths polynomial.add.temp.result[0]
data remove storage t_algorithm_lib:maths polynomial.add.temp.result[0]
execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add.temp.result
execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list[0][-1][0] append value ['*']

execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/items_add_item/add_result_etc/read_loop2