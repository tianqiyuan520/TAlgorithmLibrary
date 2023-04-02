data modify storage t_algorithm_lib:maths auto_derivation.transform.result append value [')']
data modify storage t_algorithm_lib:maths auto_derivation.transform.display append value '{"text":")","color":"gray"}'
scoreboard players remove #tal.maths.derivation.deep tal.input 1
execute if score #tal.maths.derivation.deep tal.input matches 1.. run function t_algorithm_lib:maths/auto_derivation/transform/end