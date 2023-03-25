##去除多余括号
# data modify storage t_algorithm_lib:maths polynomial.temp.data set value []

scoreboard players set #tal.maths.polynomial.fail tal.str_parser 0
scoreboard players set #tal.maths.polynomial.success tal.str_parser 0
scoreboard players set #tal.maths.polynomial.success2 tal.str_parser 0

scoreboard players set #tal.maths.polynomial.success3 tal.str_parser 10
function t_algorithm_lib:maths/polynomial/simplify/separate/symbol/check_before

