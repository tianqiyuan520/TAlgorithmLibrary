function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/is_paren

execute if score #tal.maths.integrate.paren tal.str_parser matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/add/start
execute unless score #tal.maths.integrate.paren tal.str_parser matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/add

data remove storage t_algorithm_lib:maths integrate.temp.data[0]

execute store result score #tal.maths.integrate.list_count tal.str_parser run data get storage t_algorithm_lib:maths integrate.temp.data
execute if score #tal.maths.integrate.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/loop