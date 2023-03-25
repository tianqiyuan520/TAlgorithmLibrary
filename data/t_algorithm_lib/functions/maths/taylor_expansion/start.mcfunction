##结果
data modify storage t_algorithm_lib:maths taylor_expansion.result set value []
data modify storage t_algorithm_lib:maths taylor_expansion.step set from storage t_algorithm_lib:maths taylor_expansion.input
##级数
# scoreboard players set #tal.maths.derivation.series tal.str_parser 1
scoreboard players set #tal.maths.derivation.series2 tal.str_parser 0
scoreboard players operation #tal.maths.derivation.series3 tal.str_parser = #tal.maths.derivation.series tal.str_parser

function t_algorithm_lib:maths/taylor_expansion/loop

scoreboard players set #tal.maths.derivation.series tal.str_parser 1
