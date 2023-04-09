data modify storage t_algorithm_lib:array temp.list set from storage t_algorithm_lib:maths polynomial.temp.list
execute store result score #tal.maths.polynomial.temp.list_count2 tal.input run data get storage t_algorithm_lib:maths polynomial.temp.list
function t_algorithm_lib:array/num_array_to_num/start

execute store result storage t_algorithm_lib:maths polynomial.temp.n int 1 run scoreboard players get #tal.array.temp.num tal.input
# data modify storage t_algorithm_lib:maths polynomial.temp.n set from storage t_algorithm_lib:array temp.return
execute unless score #tal.maths.polynomial.temp.list_count2 tal.input matches 0 run function t_algorithm_lib:maths/polynomial/simplify/separate/check_tier
data modify storage t_algorithm_lib:maths polynomial.temp.list set value []
