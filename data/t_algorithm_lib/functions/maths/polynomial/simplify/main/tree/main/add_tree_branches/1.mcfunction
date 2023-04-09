##第1种 乘法分离添加

data modify storage t_algorithm_lib:maths polynomial.main.main_tree append value [[],[0],[0],[0],['mul_p']]
execute store result score #tal.maths.polynomial.num tal.input run data get storage t_algorithm_lib:maths polynomial.main.this_data
data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.this_data
##触发 二号连接符
execute if score #tal.maths.polynomial.temp.symbol2 tal.input matches 1 run data modify storage t_algorithm_lib:maths polynomial.main.main_tree[-1][0] set from storage t_algorithm_lib:maths polynomial.main.this_data[0]

execute store result storage t_algorithm_lib:maths polynomial.main.main_tree[-1][2][0] int 1 run scoreboard players get #tal.maths.polynomial.main.index tal.input