data modify storage t_algorithm_lib:array temp.list set from storage t_algorithm_lib:maths suffix_expression.temp.list
execute store result score #tal.maths.suffix_expression.list_count2 tal.input run data get storage t_algorithm_lib:maths suffix_expression.temp.list
function t_algorithm_lib:array/num_array_to_num/start
execute store result storage t_algorithm_lib:array temp.return int 1 run scoreboard players get #tal.array.temp.num tal.input
data modify storage t_algorithm_lib:maths suffix_expression.temp.n set from storage t_algorithm_lib:array temp.return
execute unless score #tal.maths.suffix_expression.list_count2 tal.input matches 0 run function t_algorithm_lib:maths/suffix_expression/separate/end
data modify storage t_algorithm_lib:maths suffix_expression.temp.list set value []
