
data modify storage t_algorithm_lib:maths auto_derivation.separation append value []
data modify storage t_algorithm_lib:maths auto_derivation.separation[-1] append from storage t_algorithm_lib:maths auto_derivation.temp.n

scoreboard players set #tal.maths.derivation.is_tier tal.input 0