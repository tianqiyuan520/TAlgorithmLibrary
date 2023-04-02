scoreboard players set #tal.maths.derivation.main.c-t tal.input 0
data modify storage t_algorithm_lib:maths auto_derivation.temp.list3 set value [[]]
execute store result score #tal.maths.derivation.list_count tal.input run data get storage t_algorithm_lib:maths auto_derivation.temp.list2
execute if score #tal.maths.derivation.list_count tal.input matches 1.. run function t_algorithm_lib:maths/auto_derivation/separate/commas/loop