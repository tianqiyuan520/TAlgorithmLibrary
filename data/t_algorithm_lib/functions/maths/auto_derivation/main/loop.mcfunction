function t_algorithm_lib:maths/auto_derivation/main/main_body

scoreboard players remove #tal.maths.derivation.main.time tal.str_parser 1
execute unless score #tal.maths.derivation.main.time tal.str_parser matches ..0 if score #tal.maths.derivation.main.end tal.str_parser matches 0 run function t_algorithm_lib:maths/auto_derivation/main/loop

