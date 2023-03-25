##2/(2*x+1)
execute store result score #tal.num.ln.num4 tal.str_parser run data get storage t_algorithm_lib:num ln.list[0]
execute store result score #tal.num.ln.num5 tal.str_parser run data get storage t_algorithm_lib:ln return 100000

scoreboard players set #2 tal.str_parser 2
scoreboard players operation #tal.num.ln.num4 tal.str_parser *= #2 tal.str_parser
scoreboard players add #tal.num.ln.num4 tal.str_parser 1
scoreboard players set #200000 tal.str_parser 200000
scoreboard players operation #200000 tal.str_parser /= #tal.num.ln.num4 tal.str_parser

scoreboard players operation #tal.num.ln.num5 tal.str_parser += #200000 tal.str_parser
execute store result storage t_algorithm_lib:ln return double 0.00001 run scoreboard players get #tal.num.ln.num5 tal.str_parser

data remove storage t_algorithm_lib:num ln.list[0]

execute store result score #tal.num.ln.list_count tal.str_parser run data get storage t_algorithm_lib:num ln.list
execute if score #tal.num.ln.list_count tal.str_parser matches 1.. run function t_algorithm_lib:num/logarithm/ln/cal