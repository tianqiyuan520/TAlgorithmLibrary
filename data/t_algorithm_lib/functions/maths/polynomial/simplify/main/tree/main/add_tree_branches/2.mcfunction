##第2种 指数添加 若为1则不添加

data modify storage t_algorithm_lib:maths polynomial.main.this_data_ set from storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0]

data modify storage t_algorithm_lib:maths polynomial.main.main_tree append value [[],[-1],[2],[0],['power']]
data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.this_data_[2]

##判断指数是否为1

execute store result score #tal.maths.polynomial.num tal.str_parser run data get storage t_algorithm_lib:maths polynomial.main.this_data_[2]
execute store result score #tal.maths.polynomial.num2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.main.this_data_[2][0][0]
execute if score #tal.maths.polynomial.num tal.str_parser matches 1 if score #tal.maths.polynomial.num2 tal.str_parser matches 0..1 run data remove storage t_algorithm_lib:maths polynomial.main.main_tree[-1]