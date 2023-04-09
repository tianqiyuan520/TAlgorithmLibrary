##阶乘
execute store result score #tal.num.temp.num tal.input run data get storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-1][0]

function t_algorithm_lib:num/factorial/start
data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1] append value []
data modify storage t_algorithm_lib:maths calculator.main.stack[-1][1][-1][-2][] set from storage t_algorithm_lib:num temp.return
