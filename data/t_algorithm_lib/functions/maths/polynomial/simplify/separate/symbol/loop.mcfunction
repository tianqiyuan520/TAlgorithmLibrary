function t_algorithm_lib:maths/polynomial/simplify/separate/symbol/is_paren

execute if score #tal.maths.polynomial.paren tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/separate/symbol/add/start
execute unless score #tal.maths.polynomial.paren tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/separate/symbol/add

data remove storage t_algorithm_lib:maths polynomial.temp.data[0]

execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.temp.data
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/separate/symbol/loop