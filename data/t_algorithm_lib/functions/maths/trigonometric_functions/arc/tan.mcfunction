##arctan()
##[自定义输入]数字  [-万,万]
# data modify storage t_algorithm_lib:maths trigonometric_functions.input set value 0.0
##返回角度
data modify storage t_algorithm_lib:maths trigonometric_functions.result.tan set value 0.0

##生成生物
function t_algorithm_lib:maths/trigonometric_functions/init

##cal
execute positioned .0 .0 1.0 as 00000000-0000-1d63-0000-000600000001 run tp @s ~ ~ ~ 90.0 0.0
execute store result entity 00000000-0000-1d63-0000-000600000001 Pos[0] double -0.0001 run data get storage t_algorithm_lib:maths trigonometric_functions.input 10000

execute as 00000000-0000-1d63-0000-000600000000 at @s positioned .0 .0 .0 facing entity 00000000-0000-1d63-0000-000600000001 eyes run tp ~ ~ ~

data modify storage t_algorithm_lib:maths trigonometric_functions.result.tan set from entity 00000000-0000-1d63-0000-000600000000 Rotation[0]

