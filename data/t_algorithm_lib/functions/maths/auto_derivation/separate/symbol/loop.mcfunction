function t_algorithm_lib:maths/auto_derivation/separate/symbol/is_paren

execute if score #tal.maths.derivation.paren tal.str_parser matches 0 run function t_algorithm_lib:maths/auto_derivation/separate/symbol/add/start
execute unless score #tal.maths.derivation.paren tal.str_parser matches 0 run function t_algorithm_lib:maths/auto_derivation/separate/symbol/add

data remove storage t_algorithm_lib:maths auto_derivation.temp.data[0]

execute store result score #tal.maths.derivation.list_count tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.temp.data
execute if score #tal.maths.derivation.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/auto_derivation/separate/symbol/loop