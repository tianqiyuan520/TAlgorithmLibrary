##分为 普通加^1  和除法加^-1
data modify storage t_algorithm_lib:maths polynomial.temp.list_check.char set from storage t_algorithm_lib:maths polynomial.temp.data2[-2][0]
scoreboard players set #tal.maths.polynomial.division tal.str_parser 0

execute if data storage t_algorithm_lib:maths polynomial.temp.list_check{char:'/'} run scoreboard players set #tal.maths.polynomial.division tal.str_parser 1

execute if score #tal.maths.polynomial.division tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.temp.data2[-2][0] set value '*'



data modify storage t_algorithm_lib:maths polynomial.temp.data2[-1] append value ['^']
execute if score #tal.maths.polynomial.division tal.str_parser matches 0 run data modify storage t_algorithm_lib:maths polynomial.temp.data2[-1] append value [[1]]
execute if score #tal.maths.polynomial.division tal.str_parser matches 1 run data modify storage t_algorithm_lib:maths polynomial.temp.data2[-1] append value [[-1]]


function t_algorithm_lib:maths/polynomial/simplify/general/symbol/add_power2