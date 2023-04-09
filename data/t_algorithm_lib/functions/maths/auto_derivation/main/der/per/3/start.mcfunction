##复查
scoreboard players set #tal.maths.derivation.time tal.input 1
data modify storage t_algorithm_lib:maths auto_derivation.temp.data set from storage t_algorithm_lib:maths auto_derivation.main.this_data
function t_algorithm_lib:maths/auto_derivation/separate/symbol/start

data modify storage t_algorithm_lib:maths auto_derivation.main.new_data set from storage t_algorithm_lib:maths auto_derivation.temp.data2
data modify storage t_algorithm_lib:maths auto_derivation.main.per set from storage t_algorithm_lib:maths auto_derivation.temp.per