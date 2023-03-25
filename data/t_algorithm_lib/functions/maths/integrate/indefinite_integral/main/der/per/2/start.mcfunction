##复查
scoreboard players set #tal.maths.integrate.only tal.str_parser 1
scoreboard players set #tal.maths.integrate.time tal.str_parser 1
data modify storage t_algorithm_lib:maths integrate.temp.data set from storage t_algorithm_lib:maths integrate.main.this_data
function t_algorithm_lib:maths/integrate/indefinite_integral/separate/symbol/start
data modify storage t_algorithm_lib:maths integrate.main.new_data set from storage t_algorithm_lib:maths integrate.temp.data2
data modify storage t_algorithm_lib:maths integrate.main.per set from storage t_algorithm_lib:maths integrate.temp.per