#返回指针 index - index2
scoreboard players operation #tal.str.kmp.num tal.str_parser = #tal.str.kmp.index tal.str_parser
scoreboard players operation #tal.str.kmp.num tal.str_parser -= #tal.str.kmp.index2 tal.str_parser

data modify storage t_algorithm_lib:string kmp.result append value 0
execute store result storage t_algorithm_lib:string kmp.result[-1] int 1 run scoreboard players get #tal.str.kmp.num tal.str_parser