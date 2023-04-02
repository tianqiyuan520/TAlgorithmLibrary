

data remove storage t_algorithm_lib:array remove.list[0]


scoreboard players remove #tal.array.remove.n tal.input 1
execute store result score #tal.array.remove.list_count tal.input run data get storage t_algorithm_lib:array remove.list
execute if score #tal.array.remove.n tal.input matches 1.. if score #tal.array.remove.list_count tal.input >= #tal.array.remove.n tal.input if score #tal.array.remove.list_count tal.input matches 1.. run function t_algorithm_lib:array/remove/loop