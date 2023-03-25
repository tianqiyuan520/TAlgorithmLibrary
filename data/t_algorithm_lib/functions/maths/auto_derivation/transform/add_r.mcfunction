data modify storage t_algorithm_lib:maths auto_derivation.transform.result append value [')']
data modify storage t_algorithm_lib:maths auto_derivation.transform.display append value '{"text":")","color":"gray"}'

scoreboard players remove #tal.maths.derivation.deep__ tal.str_parser 1
execute if score #tal.maths.derivation.deep__ tal.str_parser matches 1.. run function t_algorithm_lib:maths/auto_derivation/transform/add_r