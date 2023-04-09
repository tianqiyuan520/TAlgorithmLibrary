function t_algorithm_lib:maths/auto_derivation/main/main_body

scoreboard players remove #tal.maths.derivation.main.time tal.input 1
execute unless score #tal.maths.derivation.main.time tal.input matches ..0 if score #tal.maths.derivation.main.end tal.input matches 0 run function t_algorithm_lib:maths/auto_derivation/main/loop

