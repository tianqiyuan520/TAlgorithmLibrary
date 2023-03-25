scoreboard players set #tal.maths.integrate.main.c-t tal.str_parser 0
data modify storage t_algorithm_lib:maths integrate.temp.list3 set value [[]]
execute store result score #tal.maths.integrate.list_count tal.str_parser run data get storage t_algorithm_lib:maths integrate.temp.list2
execute if score #tal.maths.integrate.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/integrate/indefinite_integral/separate/commas/loop