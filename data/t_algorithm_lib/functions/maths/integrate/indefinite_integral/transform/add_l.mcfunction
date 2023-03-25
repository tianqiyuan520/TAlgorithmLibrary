data modify storage t_algorithm_lib:maths integrate.transform.result append value ['(']
data modify storage t_algorithm_lib:maths integrate.transform.display append value '{"text":"(","color":"gray"}'
scoreboard players remove #tal.maths.integrate.deep__ tal.str_parser 1
execute if score #tal.maths.integrate.deep__ tal.str_parser matches 1.. run function t_algorithm_lib:maths/integrate/indefinite_integral/transform/add_l