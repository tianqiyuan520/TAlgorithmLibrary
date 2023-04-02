
data modify storage t_algorithm_lib:maths auto_derivation.input set from storage t_algorithm_lib:maths taylor_expansion.step
execute if score #tal.maths.derivation.series2 tal.input matches 1.. run scoreboard players set #tal.maths.derivation.taylor tal.input 1
function t_algorithm_lib:maths/auto_derivation/start
execute if score #tal.maths.derivation.series2 tal.input matches 1.. run data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['+']
data modify storage t_algorithm_lib:maths taylor_expansion.result append from storage t_algorithm_lib:maths auto_derivation.result
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['*']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value [1]
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['/']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['(']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value [0]
execute store result storage t_algorithm_lib:maths taylor_expansion.result[-1][0] int 1 run scoreboard players get #tal.maths.derivation.series2 tal.input
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['!']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value [')']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['*']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['(']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['x']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['-']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['a']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value [')']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value ['^']
data modify storage t_algorithm_lib:maths taylor_expansion.result append value [0]
execute store result storage t_algorithm_lib:maths taylor_expansion.result[-1][0] int 1 run scoreboard players get #tal.maths.derivation.series2 tal.input

data modify storage t_algorithm_lib:maths taylor_expansion.step set from storage t_algorithm_lib:maths auto_derivation.result

scoreboard players remove #tal.maths.derivation.series3 tal.input 1
scoreboard players add #tal.maths.derivation.series2 tal.input 1
execute if score #tal.maths.derivation.series3 tal.input matches 0 run schedule function t_algorithm_lib:maths/taylor_expansion/end 1t replace
execute if score #tal.maths.derivation.series3 tal.input matches 1.. run schedule function t_algorithm_lib:maths/taylor_expansion/loop 1t replace