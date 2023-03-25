data modify storage t_algorithm_lib:array temp.list set from storage t_algorithm_lib:array temp.list
execute store result score #tal.str.temp.list_count2 tal.str_parser run data get storage t_algorithm_lib:array temp.list
function t_algorithm_lib:array/num_array_to_num/start

data modify storage t_algorithm_lib:array temp.n set from storage t_algorithm_lib:array temp.return
execute unless score #tal.str.temp.list_count2 tal.str_parser matches 0 run function t_algorithm_lib:array/array_to_array_have_array/check_tier
data modify storage t_algorithm_lib:array temp.list set value []
