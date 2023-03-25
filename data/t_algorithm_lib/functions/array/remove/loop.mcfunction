

data remove storage t_algorithm_lib:array remove.list[0]


scoreboard players remove #tal.array.remove.n tal.str_parser 1
execute store result score #tal.array.remove.list_count tal.str_parser run data get storage t_algorithm_lib:array remove.list
execute if score #tal.array.remove.n tal.str_parser matches 1.. if score #tal.array.remove.list_count tal.str_parser >= #tal.array.remove.n tal.str_parser if score #tal.array.remove.list_count tal.str_parser matches 1.. run function t_algorithm_lib:array/remove/loop