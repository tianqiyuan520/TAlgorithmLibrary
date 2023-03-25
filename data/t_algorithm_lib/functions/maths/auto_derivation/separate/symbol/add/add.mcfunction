data modify storage t_algorithm_lib:maths auto_derivation.temp.per append from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]
data modify storage t_algorithm_lib:maths auto_derivation.temp.data2 append value []
data modify storage t_algorithm_lib:maths auto_derivation.temp.data2[-1] append from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]
data modify storage t_algorithm_lib:maths auto_derivation.temp.data2 append value []
scoreboard players add #tal.maths.derivation.time_ tal.str_parser 1