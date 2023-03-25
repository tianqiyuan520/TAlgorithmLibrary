##arccos()
##[自定义输入]数字  [-1,1]
# data modify storage t_algorithm_lib:maths trigonometric_functions.input set value 0.0
##返回角度
data modify storage t_algorithm_lib:maths trigonometric_functions.result."sin" set value 0.0

function t_algorithm_lib:maths/trigonometric_functions/arc/cos

##诱导公式


execute store result score #tal.maths.trigonometric_functions.num tal.str_parser run data get storage t_algorithm_lib:maths trigonometric_functions.result.cos 100000
#cal
scoreboard players set #9000000 tal.str_parser 9000000

scoreboard players operation #9000000 tal.str_parser -= #tal.maths.trigonometric_functions.num tal.str_parser

execute store result storage t_algorithm_lib:maths trigonometric_functions.result.sin double 0.00001 run scoreboard players get #9000000 tal.str_parser

