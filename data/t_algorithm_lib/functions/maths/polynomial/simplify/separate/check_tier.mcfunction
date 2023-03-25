
data modify storage t_algorithm_lib:maths polynomial.separation append value []
data modify storage t_algorithm_lib:maths polynomial.separation[-1] append from storage t_algorithm_lib:maths polynomial.temp.n

scoreboard players set #tal.maths.polynomial.temp.is_tier tal.str_parser 0
# scoreboard players set #tal.maths.polynomial.temp.is_down_tier tal.str_parser 0