data modify storage t_algorithm_lib:array temp.list set from storage t_algorithm_lib:maths integrate.temp.list
execute store result score #tal.maths.integrate.list_count2 tal.input run data get storage t_algorithm_lib:maths integrate.temp.list
function t_algorithm_lib:array/num_array_to_num/start
execute store result storage t_algorithm_lib:array temp.return int 1 run scoreboard players get #tal.array.temp.num tal.input
data modify storage t_algorithm_lib:maths integrate.temp.n set from storage t_algorithm_lib:array temp.return
execute unless score #tal.maths.integrate.list_count2 tal.input matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/end
data modify storage t_algorithm_lib:maths integrate.temp.list set value []
