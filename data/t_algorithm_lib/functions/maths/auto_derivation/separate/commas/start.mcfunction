scoreboard players set #tal.maths.derivation.main.c-t tal.str_parser 0
data modify storage t_algorithm_lib:maths auto_derivation.temp.list3 set value [[]]
execute store result score #tal.maths.derivation.list_count tal.str_parser run data get storage t_algorithm_lib:maths auto_derivation.temp.list2
execute if score #tal.maths.derivation.list_count tal.str_parser matches 1.. run function t_algorithm_lib:maths/auto_derivation/separate/commas/loop