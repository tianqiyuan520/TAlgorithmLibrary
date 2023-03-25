
data modify storage t_algorithm_lib:maths integrate.separation append value []
data modify storage t_algorithm_lib:maths integrate.separation[-1] append from storage t_algorithm_lib:maths integrate.temp.n

scoreboard players set #tal.maths.integrate.is_tier tal.str_parser 0