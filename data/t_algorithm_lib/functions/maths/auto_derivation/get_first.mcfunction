scoreboard players set #tal.maths.derivation.success tal.input 0

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'+'} run scoreboard players set #tal.maths.derivation.success tal.input 1

data modify storage t_algorithm_lib:maths auto_derivation.temp.list_check.char set from storage t_algorithm_lib:maths auto_derivation.temp.data[0][0]
execute if data storage t_algorithm_lib:maths auto_derivation.temp.list_check{char:'-'} run scoreboard players set #tal.maths.derivation.success tal.input 1

execute if score #tal.maths.derivation.success tal.input matches 1 run data modify storage t_algorithm_lib:maths auto_derivation.is_der append value 0
execute if score #tal.maths.derivation.success tal.input matches 0 run data modify storage t_algorithm_lib:maths auto_derivation.is_der append value 1


data modify storage t_algorithm_lib:maths auto_derivation.temp.data append from storage t_algorithm_lib:maths auto_derivation.temp.data[0]
data remove storage t_algorithm_lib:maths auto_derivation.temp.data[0]

scoreboard players remove #tal.maths.derivation.index tal.input 1
execute unless score #tal.maths.derivation.index tal.input matches ..0 run function t_algorithm_lib:maths/auto_derivation/get_first