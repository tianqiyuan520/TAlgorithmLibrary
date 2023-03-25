scoreboard players add #tal.str.kmp.index tal.str_parser 1
scoreboard players add #tal.str.kmp.index2 tal.str_parser 1

data modify storage t_algorithm_lib:string kmp.next append value 0
execute store result storage t_algorithm_lib:string kmp.next[-1] int 1 run scoreboard players get #tal.str.kmp.index2 tal.str_parser