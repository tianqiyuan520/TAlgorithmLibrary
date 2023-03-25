##[自定义输入]角度

data modify storage t_algorithm_lib:num degrees.input set from storage t_algorithm_lib:maths calculator.main.stack[-1][2][0]
function t_algorithm_lib:num/degrees/start2
scoreboard players set #tal.num.trigonometric_functions.tan tal.str_parser 1
data modify storage t_algorithm_lib:maths trigonometric_functions.input set from storage t_algorithm_lib:num degrees.result
function t_algorithm_lib:maths/trigonometric_functions/sin_cos_tan/start

data modify storage t_algorithm_lib:maths calculator.main.fuc_value set from storage t_algorithm_lib:maths trigonometric_functions.result.tan