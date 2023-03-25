function t_algorithm_lib:maths/integrate/indefinite_integral/main/main_body

scoreboard players remove #tal.maths.integrate.main.time tal.str_parser 1
execute unless score #tal.maths.integrate.main.time tal.str_parser matches ..0 if score #tal.maths.integrate.main.end tal.str_parser matches 0 run function t_algorithm_lib:maths/integrate/indefinite_integral/main/loop

