###三角函数计算 sin() cos() tan() [实体版]
##弧度制 角度
##[自定义输入]角度
# data modify storage t_algorithm_lib:maths trigonometric_functions.input set value 0.0
##[自定义输入]是否计算tan()
# scoreboard players set #tal.num.trigonometric_functions.tan tal.input 0
##[返回结果]
data modify storage t_algorithm_lib:maths trigonometric_functions.result set value {"sin":0.0,"cos":0.0,"tan":0.0}

##生成生物
function t_algorithm_lib:maths/trigonometric_functions/init

execute store result entity 00000000-0000-1d63-0000-000600000000 Rotation[0] float -0.0001 run data get storage t_algorithm_lib:maths trigonometric_functions.input 10000
execute at 00000000-0000-1d63-0000-000600000000 positioned .0 .0 .0 as 00000000-0000-1d63-0000-000600000001 run tp @s ^ ^ ^1.0

data modify storage t_algorithm_lib:maths trigonometric_functions.result.sin set from entity 00000000-0000-1d63-0000-000600000001 Pos[0]
data modify storage t_algorithm_lib:maths trigonometric_functions.result.cos set from entity 00000000-0000-1d63-0000-000600000001 Pos[2]

execute if score #tal.num.trigonometric_functions.tan tal.input matches 1 run function t_algorithm_lib:maths/trigonometric_functions/sin_cos_tan/tan

##[自定义输入]角度
data modify storage t_algorithm_lib:maths trigonometric_functions.input set value 60
##[自定义输入]是否计算tan()
scoreboard players set #tal.num.trigonometric_functions.tan tal.input 0
