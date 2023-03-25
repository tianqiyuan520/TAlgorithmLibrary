##arccos()
##[自定义输入]数字  [-1,1]
# data modify storage t_algorithm_lib:maths trigonometric_functions.input set value 0.0
##返回角度
data modify storage t_algorithm_lib:maths trigonometric_functions.result.cos set value 0.0

##生成生物
function t_algorithm_lib:maths/trigonometric_functions/init

execute store result score #tal.maths.trigonometric_functions.num tal.str_parser run data get storage t_algorithm_lib:maths trigonometric_functions.input 1000
#cal
scoreboard players set #1000000 tal.str_parser 1000000
scoreboard players operation #tal.maths.trigonometric_functions.num tal.str_parser *= #tal.maths.trigonometric_functions.num tal.str_parser
scoreboard players operation #1000000 tal.str_parser -= #tal.maths.trigonometric_functions.num tal.str_parser

scoreboard players operation #tal.maths.trigonometric_functions.num3 tal.str_parser = #1000000 tal.str_parser

execute positioned .0 .0 .0 as 00000000-0000-1d63-0000-000600000001 run tp @s ~ ~ ~ 90.0 0.0
data modify entity 00000000-0000-1d63-0000-000600000001 Pos[2] set from storage t_algorithm_lib:maths trigonometric_functions.input


execute as 00000000-0000-1d63-0000-000600000001 at @s positioned ^ ^ ^0.0001 run function t_algorithm_lib:maths/trigonometric_functions/arc/loop

execute as 00000000-0000-1d63-0000-000600000000 at @s positioned .0 .0 .0 facing entity 00000000-0000-1d63-0000-000600000001 eyes run tp ~ ~ ~

data modify storage t_algorithm_lib:maths trigonometric_functions.result.cos set from entity 00000000-0000-1d63-0000-000600000000 Rotation[0]

