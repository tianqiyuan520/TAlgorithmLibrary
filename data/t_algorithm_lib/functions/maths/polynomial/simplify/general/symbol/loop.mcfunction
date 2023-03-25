function t_algorithm_lib:maths/polynomial/simplify/general/symbol/is_paren

execute if score #tal.maths.polynomial.paren tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add/start
execute unless score #tal.maths.polynomial.paren tal.str_parser matches 0 run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add

data remove storage t_algorithm_lib:maths polynomial.temp.data[0]



execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.data2
execute unless score #tal.maths.polynomial.list_count tal.str_parser = #tal.maths.polynomial.list_count_last tal.str_parser run data modify storage t_algorithm_lib:maths polynomial.temp.data3 append value 0
execute unless score #tal.maths.polynomial.list_count tal.str_parser = #tal.maths.polynomial.list_count_last tal.str_parser run data modify storage t_algorithm_lib:maths polynomial.temp.data3 append value 0
scoreboard players operation #tal.maths.polynomial.list_count_last tal.str_parser = #tal.maths.polynomial.list_count tal.str_parser

execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.temp.data

execute if score #tal.maths.polynomial.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/general/symbol/loop