execute store result score #tal.maths.polynomial.list_count tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add.list[0][2][0][0]
execute store result score #tal.maths.polynomial.list_count2 tal.str_parser run data get storage t_algorithm_lib:maths polynomial.add.list2[0][2][0][0]

scoreboard players operation #tal.maths.polynomial.list_count2 tal.str_parser -= #tal.maths.polynomial.list_count tal.str_parser
execute store result storage t_algorithm_lib:maths polynomial.add.list2[0][2][0][0] int 1 run scoreboard players get #tal.maths.polynomial.list_count2 tal.str_parser
