data modify storage t_algorithm_lib:maths polynomial.temp.list[0][0] append from storage t_algorithm_lib:maths polynomial.add.temp.gcd[0]
data remove storage t_algorithm_lib:maths polynomial.add.temp.gcd[0]
execute store result score #tal.maths.polynomial.list_count tal.input run data get storage t_algorithm_lib:maths polynomial.add.temp.gcd
execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run data modify storage t_algorithm_lib:maths polynomial.temp.list[0][0] append value ['*']

execute if score #tal.maths.polynomial.list_count tal.input matches 1.. run function t_algorithm_lib:maths/polynomial/simplify/main/add/main/read_loop