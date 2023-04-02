# data modify storage t_algorithm_lib:string_parser preparation_chars set from storage t_algorithm_lib:string temp.preparation_chars

data modify storage t_algorithm_lib:string_parser io.parameter set from storage t_algorithm_lib:string temp.parameter


# data modify storage t_algorithm_lib:string temp.return set value 1b
data modify storage t_algorithm_lib:array take_num.list set from storage t_algorithm_lib:string_parser io.output
execute store result score #tal.str.temp.list_count3 tal.input run data get storage t_algorithm_lib:array take_num.list
function t_algorithm_lib:array/take_str_num_for_array/start
execute store result score #tal.str.temp.list_count4 tal.input run data get storage t_algorithm_lib:array take_num.list2

execute unless score #tal.str.temp.list_count3 tal.input = #tal.str.temp.list_count4 tal.input run data modify storage t_algorithm_lib:string temp.return set value 0b


execute if score #tal.str.temp.list_count3 tal.input = #tal.str.temp.list_count4 tal.input run data modify storage t_algorithm_lib:string temp.return set value 1b

##显示
# tellraw @a [{"nbt":"temp.return","storage": "t_algorithm_lib:string"}]